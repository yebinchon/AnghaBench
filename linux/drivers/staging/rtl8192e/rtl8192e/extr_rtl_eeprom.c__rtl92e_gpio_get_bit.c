
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int EPROM_CMD ;
 int rtl92e_readb (struct net_device*,int ) ;

__attribute__((used)) static bool _rtl92e_gpio_get_bit(struct net_device *dev, int no)
{
 u8 reg = rtl92e_readb(dev, EPROM_CMD);

 return (reg >> no) & 0x1;
}
