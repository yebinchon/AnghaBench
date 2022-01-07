
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int EPROM_CMD ;
 int EPROM_CS_BIT ;
 int EPROM_DELAY ;
 int force_pci_posting (struct net_device*) ;
 int read_nic_byte_E (struct net_device*,int ,int*) ;
 int udelay (int ) ;
 int write_nic_byte_E (struct net_device*,int ,int) ;

__attribute__((used)) static void eprom_cs(struct net_device *dev, short bit)
{
 u8 cmdreg;
 int err;

 err = read_nic_byte_E(dev, EPROM_CMD, &cmdreg);
 if (err)
  return;
 if (bit)

  write_nic_byte_E(dev, EPROM_CMD, cmdreg | EPROM_CS_BIT);
 else

  write_nic_byte_E(dev, EPROM_CMD, cmdreg & ~EPROM_CS_BIT);

 force_pci_posting(dev);
 udelay(EPROM_DELAY);
}
