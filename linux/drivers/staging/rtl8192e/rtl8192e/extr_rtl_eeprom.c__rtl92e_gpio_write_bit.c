
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int EPROM_CMD ;
 int EPROM_DELAY ;
 int rtl92e_readb (struct net_device*,int ) ;
 int rtl92e_writeb (struct net_device*,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void _rtl92e_gpio_write_bit(struct net_device *dev, int no, bool val)
{
 u8 reg = rtl92e_readb(dev, EPROM_CMD);

 if (val)
  reg |= 1 << no;
 else
  reg &= ~(1 << no);

 rtl92e_writeb(dev, EPROM_CMD, reg);
 udelay(EPROM_DELAY);
}
