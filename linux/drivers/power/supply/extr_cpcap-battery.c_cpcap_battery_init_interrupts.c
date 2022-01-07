
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cpcap_battery_ddata {int reg; } ;


 int ARRAY_SIZE (char const* const*) ;
 int CPCAP_REG_BPEOL ;
 int CPCAP_REG_BPEOL_BIT_BATTDETEN ;
 int cpcap_battery_init_irq (struct platform_device*,struct cpcap_battery_ddata*,char const* const) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static int cpcap_battery_init_interrupts(struct platform_device *pdev,
      struct cpcap_battery_ddata *ddata)
{
 static const char * const cpcap_battery_irqs[] = {
  "eol", "lowbph", "lowbpl",
  "chrgcurr1", "battdetb"
 };
 int i, error;

 for (i = 0; i < ARRAY_SIZE(cpcap_battery_irqs); i++) {
  error = cpcap_battery_init_irq(pdev, ddata,
            cpcap_battery_irqs[i]);
  if (error)
   return error;
 }


 error = regmap_update_bits(ddata->reg, CPCAP_REG_BPEOL,
       0xffff,
       CPCAP_REG_BPEOL_BIT_BATTDETEN);
 if (error)
  return error;

 return 0;
}
