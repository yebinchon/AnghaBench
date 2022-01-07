
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rt2x00_dev {int dummy; } ;


 int PWR_PIN_CFG ;
 int RT3883 ;
 int TX_PIN_CFG ;
 int TX_PIN_CFG_RFTR_EN ;
 int rt2800_disable_radio (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (scalar_t__*,int ,int) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,scalar_t__) ;

__attribute__((used)) static void rt2800soc_disable_radio(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;

 rt2800_disable_radio(rt2x00dev);
 rt2x00mmio_register_write(rt2x00dev, PWR_PIN_CFG, 0);

 reg = 0;
 if (rt2x00_rt(rt2x00dev, RT3883))
  rt2x00_set_field32(&reg, TX_PIN_CFG_RFTR_EN, 1);

 rt2x00mmio_register_write(rt2x00dev, TX_PIN_CFG, reg);
}
