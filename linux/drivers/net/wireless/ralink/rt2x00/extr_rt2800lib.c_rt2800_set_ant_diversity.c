
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
typedef enum antenna { ____Placeholder_antenna } antenna ;


 int ANTENNA_A ;
 int E2PROM_CSR ;
 int E2PROM_CSR_DATA_CLOCK ;
 int GPIO_CTRL ;
 int GPIO_CTRL_DIR3 ;
 int GPIO_CTRL_VAL3 ;
 int MCU_ANT_SELECT ;
 int rt2800_mcu_request (struct rt2x00_dev*,int ,int,int,int ) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 scalar_t__ rt2x00_is_pci (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_is_usb (struct rt2x00_dev*) ;
 int rt2x00_set_field32 (int *,int ,int) ;

__attribute__((used)) static void rt2800_set_ant_diversity(struct rt2x00_dev *rt2x00dev,
         enum antenna ant)
{
 u32 reg;
 u8 eesk_pin = (ant == ANTENNA_A) ? 1 : 0;
 u8 gpio_bit3 = (ant == ANTENNA_A) ? 0 : 1;

 if (rt2x00_is_pci(rt2x00dev)) {
  reg = rt2800_register_read(rt2x00dev, E2PROM_CSR);
  rt2x00_set_field32(&reg, E2PROM_CSR_DATA_CLOCK, eesk_pin);
  rt2800_register_write(rt2x00dev, E2PROM_CSR, reg);
 } else if (rt2x00_is_usb(rt2x00dev))
  rt2800_mcu_request(rt2x00dev, MCU_ANT_SELECT, 0xff,
       eesk_pin, 0);

 reg = rt2800_register_read(rt2x00dev, GPIO_CTRL);
 rt2x00_set_field32(&reg, GPIO_CTRL_DIR3, 0);
 rt2x00_set_field32(&reg, GPIO_CTRL_VAL3, gpio_bit3);
 rt2800_register_write(rt2x00dev, GPIO_CTRL, reg);
}
