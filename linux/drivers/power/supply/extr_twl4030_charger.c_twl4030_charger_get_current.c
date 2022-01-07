
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TWL4030_BCICTL1 ;
 int TWL4030_BCIICHG ;
 int TWL4030_CGAIN ;
 int regval2ua (int,int) ;
 int twl4030_bci_read (int ,int*) ;
 int twl4030bci_read_adc_val (int ) ;

__attribute__((used)) static int twl4030_charger_get_current(void)
{
 int curr;
 int ret;
 u8 bcictl1;

 curr = twl4030bci_read_adc_val(TWL4030_BCIICHG);
 if (curr < 0)
  return curr;

 ret = twl4030_bci_read(TWL4030_BCICTL1, &bcictl1);
 if (ret)
  return ret;

 return regval2ua(curr, bcictl1 & TWL4030_CGAIN);
}
