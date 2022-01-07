
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_battery {int da9052; } ;


 int DA9052_ADC_MAN_MUXSEL_VBAT ;
 int da9052_adc_manual_read (int ,int ) ;
 int volt_reg_to_mV (int) ;

__attribute__((used)) static int da9052_bat_read_volt(struct da9052_battery *bat, int *volt_mV)
{
 int volt;

 volt = da9052_adc_manual_read(bat->da9052, DA9052_ADC_MAN_MUXSEL_VBAT);
 if (volt < 0)
  return volt;

 *volt_mV = volt_reg_to_mV(volt);

 return 0;
}
