
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int GPIO_CTRL ;
 int GPIO_CTRL_VAL2 ;
 int RT3290 ;
 int WLAN_FUN_CTRL ;
 int WLAN_GPIO_IN_BIT0 ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;

int rt2800_rfkill_poll(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;

 if (rt2x00_rt(rt2x00dev, RT3290)) {
  reg = rt2800_register_read(rt2x00dev, WLAN_FUN_CTRL);
  return rt2x00_get_field32(reg, WLAN_GPIO_IN_BIT0);
 } else {
  reg = rt2800_register_read(rt2x00dev, GPIO_CTRL);
  return rt2x00_get_field32(reg, GPIO_CTRL_VAL2);
 }
}
