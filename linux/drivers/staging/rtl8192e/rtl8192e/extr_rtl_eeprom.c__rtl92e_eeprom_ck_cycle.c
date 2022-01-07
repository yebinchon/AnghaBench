
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EPROM_CK_BIT ;
 int _rtl92e_gpio_write_bit (struct net_device*,int ,int) ;

__attribute__((used)) static void _rtl92e_eeprom_ck_cycle(struct net_device *dev)
{
 _rtl92e_gpio_write_bit(dev, EPROM_CK_BIT, 1);
 _rtl92e_gpio_write_bit(dev, EPROM_CK_BIT, 0);
}
