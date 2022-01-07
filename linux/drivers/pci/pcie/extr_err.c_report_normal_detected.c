
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_channel_io_normal ;
 int report_error_detected (struct pci_dev*,int ,void*) ;

__attribute__((used)) static int report_normal_detected(struct pci_dev *dev, void *data)
{
 return report_error_detected(dev, pci_channel_io_normal, data);
}
