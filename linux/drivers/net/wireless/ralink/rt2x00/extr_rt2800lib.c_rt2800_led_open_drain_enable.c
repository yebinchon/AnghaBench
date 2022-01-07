
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int OPT_14_CSR ;
 int OPT_14_CSR_BIT0 ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;

__attribute__((used)) static void rt2800_led_open_drain_enable(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;

 reg = rt2800_register_read(rt2x00dev, OPT_14_CSR);
 rt2x00_set_field32(&reg, OPT_14_CSR_BIT0, 1);
 rt2800_register_write(rt2x00dev, OPT_14_CSR, reg);
}
