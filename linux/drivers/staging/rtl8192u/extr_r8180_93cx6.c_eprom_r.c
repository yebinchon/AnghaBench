
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int EPROM_CMD ;
 int EPROM_DELAY ;
 int EPROM_R_BIT ;
 int read_nic_byte_E (struct net_device*,int ,int*) ;
 int udelay (int ) ;

__attribute__((used)) static short eprom_r(struct net_device *dev)
{
 u8 bit;
 int err;

 err = read_nic_byte_E(dev, EPROM_CMD, &bit);
 if (err)
  return err;

 udelay(EPROM_DELAY);

 if (bit & EPROM_R_BIT)
  return 1;

 return 0;
}
