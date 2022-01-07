
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_lcdfb_pdata {int (* atmel_lcdfb_power_control ) (struct atmel_lcdfb_pdata*,int) ;} ;
struct atmel_lcdfb_info {TYPE_1__* pdev; scalar_t__ reg_lcd; struct atmel_lcdfb_pdata pdata; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int stub1 (struct atmel_lcdfb_pdata*,int) ;

__attribute__((used)) static inline void atmel_lcdfb_power_control(struct atmel_lcdfb_info *sinfo, int on)
{
 int ret;
 struct atmel_lcdfb_pdata *pdata = &sinfo->pdata;

 if (pdata->atmel_lcdfb_power_control)
  pdata->atmel_lcdfb_power_control(pdata, on);
 else if (sinfo->reg_lcd) {
  if (on) {
   ret = regulator_enable(sinfo->reg_lcd);
   if (ret)
    dev_err(&sinfo->pdev->dev,
     "lcd regulator enable failed:	%d\n", ret);
  } else {
   ret = regulator_disable(sinfo->reg_lcd);
   if (ret)
    dev_err(&sinfo->pdev->dev,
     "lcd regulator disable failed: %d\n", ret);
  }
 }
}
