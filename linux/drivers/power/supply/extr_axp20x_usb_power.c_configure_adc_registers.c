
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_usb_power {int regmap; } ;


 int AXP20X_ADC_EN1 ;
 int AXP20X_ADC_EN1_VBUS_CURR ;
 int AXP20X_ADC_EN1_VBUS_VOLT ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int configure_adc_registers(struct axp20x_usb_power *power)
{

 return regmap_update_bits(power->regmap, AXP20X_ADC_EN1,
      AXP20X_ADC_EN1_VBUS_CURR |
      AXP20X_ADC_EN1_VBUS_VOLT,
      AXP20X_ADC_EN1_VBUS_CURR |
      AXP20X_ADC_EN1_VBUS_VOLT);
}
