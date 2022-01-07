
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {TYPE_2__* physfn; scalar_t__ is_virtfn; } ;
struct TYPE_4__ {TYPE_1__* sriov; } ;
struct TYPE_3__ {int hdr_type; } ;


 int PCI_HEADER_TYPE ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;

__attribute__((used)) static u8 pci_hdr_type(struct pci_dev *dev)
{
 u8 hdr_type;





 pci_read_config_byte(dev, PCI_HEADER_TYPE, &hdr_type);
 return hdr_type;
}
