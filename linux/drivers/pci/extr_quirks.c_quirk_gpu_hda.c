
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_BASE_CLASS_DISPLAY ;
 int pci_create_device_link (struct pci_dev*,int,int ,int ,int) ;

__attribute__((used)) static void quirk_gpu_hda(struct pci_dev *hda)
{
 pci_create_device_link(hda, 1, 0, PCI_BASE_CLASS_DISPLAY, 16);
}
