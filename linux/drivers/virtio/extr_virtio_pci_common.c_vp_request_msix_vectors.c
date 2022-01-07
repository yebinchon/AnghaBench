
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct virtio_pci_device {int msix_vectors; int msix_enabled; unsigned int msix_used_vectors; unsigned int (* config_vector ) (struct virtio_pci_device*,unsigned int) ;int * msix_names; int pci_dev; int * msix_affinity_masks; TYPE_1__ vdev; } ;
struct virtio_device {int dummy; } ;
struct irq_affinity {int pre_vectors; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PCI_IRQ_AFFINITY ;
 unsigned int PCI_IRQ_MSIX ;
 unsigned int VIRTIO_MSI_NO_VECTOR ;
 int alloc_cpumask_var (int *,int ) ;
 char* dev_name (int *) ;
 int * kcalloc (int,int,int ) ;
 int * kmalloc_array (int,int,int ) ;
 int pci_alloc_irq_vectors_affinity (int ,int,int,unsigned int,struct irq_affinity*) ;
 int pci_irq_vector (int ,unsigned int) ;
 int request_irq (int ,int ,int ,int ,struct virtio_pci_device*) ;
 int snprintf (int ,int,char*,char const*) ;
 unsigned int stub1 (struct virtio_pci_device*,unsigned int) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;
 int vp_config_changed ;
 int vp_vring_interrupt ;

__attribute__((used)) static int vp_request_msix_vectors(struct virtio_device *vdev, int nvectors,
       bool per_vq_vectors, struct irq_affinity *desc)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);
 const char *name = dev_name(&vp_dev->vdev.dev);
 unsigned flags = PCI_IRQ_MSIX;
 unsigned i, v;
 int err = -ENOMEM;

 vp_dev->msix_vectors = nvectors;

 vp_dev->msix_names = kmalloc_array(nvectors,
        sizeof(*vp_dev->msix_names),
        GFP_KERNEL);
 if (!vp_dev->msix_names)
  goto error;
 vp_dev->msix_affinity_masks
  = kcalloc(nvectors, sizeof(*vp_dev->msix_affinity_masks),
     GFP_KERNEL);
 if (!vp_dev->msix_affinity_masks)
  goto error;
 for (i = 0; i < nvectors; ++i)
  if (!alloc_cpumask_var(&vp_dev->msix_affinity_masks[i],
     GFP_KERNEL))
   goto error;

 if (desc) {
  flags |= PCI_IRQ_AFFINITY;
  desc->pre_vectors++;
 }

 err = pci_alloc_irq_vectors_affinity(vp_dev->pci_dev, nvectors,
          nvectors, flags, desc);
 if (err < 0)
  goto error;
 vp_dev->msix_enabled = 1;


 v = vp_dev->msix_used_vectors;
 snprintf(vp_dev->msix_names[v], sizeof *vp_dev->msix_names,
   "%s-config", name);
 err = request_irq(pci_irq_vector(vp_dev->pci_dev, v),
     vp_config_changed, 0, vp_dev->msix_names[v],
     vp_dev);
 if (err)
  goto error;
 ++vp_dev->msix_used_vectors;

 v = vp_dev->config_vector(vp_dev, v);

 if (v == VIRTIO_MSI_NO_VECTOR) {
  err = -EBUSY;
  goto error;
 }

 if (!per_vq_vectors) {

  v = vp_dev->msix_used_vectors;
  snprintf(vp_dev->msix_names[v], sizeof *vp_dev->msix_names,
    "%s-virtqueues", name);
  err = request_irq(pci_irq_vector(vp_dev->pci_dev, v),
      vp_vring_interrupt, 0, vp_dev->msix_names[v],
      vp_dev);
  if (err)
   goto error;
  ++vp_dev->msix_used_vectors;
 }
 return 0;
error:
 return err;
}
