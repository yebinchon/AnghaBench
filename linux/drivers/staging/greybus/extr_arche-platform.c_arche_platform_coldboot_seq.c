
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arche_platform_drvdata {scalar_t__ state; int is_reset_act_hi; int svc_reset; int dev; int svc_ref_clk; int svc_sysboot; } ;


 scalar_t__ ARCHE_PLATFORM_STATE_ACTIVE ;
 int arche_platform_set_state (struct arche_platform_drvdata*,scalar_t__) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int gpiod_set_value (int ,int ) ;
 int svc_reset_onoff (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int
arche_platform_coldboot_seq(struct arche_platform_drvdata *arche_pdata)
{
 int ret;

 if (arche_pdata->state == ARCHE_PLATFORM_STATE_ACTIVE)
  return 0;

 dev_info(arche_pdata->dev, "Booting from cold boot state\n");

 svc_reset_onoff(arche_pdata->svc_reset, arche_pdata->is_reset_act_hi);

 gpiod_set_value(arche_pdata->svc_sysboot, 0);
 usleep_range(100, 200);

 ret = clk_prepare_enable(arche_pdata->svc_ref_clk);
 if (ret) {
  dev_err(arche_pdata->dev, "failed to enable svc_ref_clk: %d\n",
   ret);
  return ret;
 }


 svc_reset_onoff(arche_pdata->svc_reset, !arche_pdata->is_reset_act_hi);

 arche_platform_set_state(arche_pdata, ARCHE_PLATFORM_STATE_ACTIVE);

 return 0;
}
