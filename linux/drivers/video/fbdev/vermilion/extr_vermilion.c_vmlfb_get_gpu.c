
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vml_par {int gpu; } ;


 int ENODEV ;
 int PCI_VENDOR_ID_INTEL ;
 int VML_DEVICE_GPU ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pci_enable_device (int ) ;
 int pci_get_device (int ,int ,int *) ;
 int vml_mutex ;

__attribute__((used)) static int vmlfb_get_gpu(struct vml_par *par)
{
 mutex_lock(&vml_mutex);

 par->gpu = pci_get_device(PCI_VENDOR_ID_INTEL, VML_DEVICE_GPU, ((void*)0));

 if (!par->gpu) {
  mutex_unlock(&vml_mutex);
  return -ENODEV;
 }

 mutex_unlock(&vml_mutex);

 if (pci_enable_device(par->gpu) < 0)
  return -ENODEV;

 return 0;
}
