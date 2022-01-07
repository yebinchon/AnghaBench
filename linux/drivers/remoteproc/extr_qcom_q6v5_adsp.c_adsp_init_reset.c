
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_adsp {void* restart; int dev; void* pdc_sync_reset; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*) ;
 void* devm_reset_control_get_exclusive (int ,char*) ;
 void* devm_reset_control_get_optional_exclusive (int ,char*) ;

__attribute__((used)) static int adsp_init_reset(struct qcom_adsp *adsp)
{
 adsp->pdc_sync_reset = devm_reset_control_get_optional_exclusive(adsp->dev,
   "pdc_sync");
 if (IS_ERR(adsp->pdc_sync_reset)) {
  dev_err(adsp->dev, "failed to acquire pdc_sync reset\n");
  return PTR_ERR(adsp->pdc_sync_reset);
 }

 adsp->restart = devm_reset_control_get_optional_exclusive(adsp->dev, "restart");


 if (!adsp->restart)
  adsp->restart = devm_reset_control_get_exclusive(adsp->dev, "cc_lpass");

 if (IS_ERR(adsp->restart)) {
  dev_err(adsp->dev, "failed to acquire restart\n");
  return PTR_ERR(adsp->restart);
 }

 return 0;
}
