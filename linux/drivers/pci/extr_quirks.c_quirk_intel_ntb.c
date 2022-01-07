
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct pci_dev {TYPE_1__* resource; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int pci_read_config_byte (struct pci_dev*,int,int*) ;

__attribute__((used)) static void quirk_intel_ntb(struct pci_dev *dev)
{
 int rc;
 u8 val;

 rc = pci_read_config_byte(dev, 0x00D0, &val);
 if (rc)
  return;

 dev->resource[2].end = dev->resource[2].start + ((u64) 1 << val) - 1;

 rc = pci_read_config_byte(dev, 0x00D1, &val);
 if (rc)
  return;

 dev->resource[4].end = dev->resource[4].start + ((u64) 1 << val) - 1;
}
