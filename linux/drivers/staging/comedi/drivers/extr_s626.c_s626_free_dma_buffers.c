
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int physical_base; scalar_t__ logical_base; } ;
struct TYPE_3__ {int physical_base; scalar_t__ logical_base; } ;
struct s626_private {TYPE_2__ ana_buf; TYPE_1__ rps_buf; } ;
struct pci_dev {int dummy; } ;
struct comedi_device {struct s626_private* private; } ;


 int S626_DMABUF_SIZE ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int pci_free_consistent (struct pci_dev*,int ,scalar_t__,int ) ;

__attribute__((used)) static void s626_free_dma_buffers(struct comedi_device *dev)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 struct s626_private *devpriv = dev->private;

 if (!devpriv)
  return;

 if (devpriv->rps_buf.logical_base)
  pci_free_consistent(pcidev, S626_DMABUF_SIZE,
        devpriv->rps_buf.logical_base,
        devpriv->rps_buf.physical_base);
 if (devpriv->ana_buf.logical_base)
  pci_free_consistent(pcidev, S626_DMABUF_SIZE,
        devpriv->ana_buf.logical_base,
        devpriv->ana_buf.physical_base);
}
