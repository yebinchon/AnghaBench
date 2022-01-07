
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6v5 {void* pdc_reset; int dev; scalar_t__ has_alt_reset; void* mss_restart; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*) ;
 void* devm_reset_control_get_exclusive (int ,char*) ;

__attribute__((used)) static int q6v5_init_reset(struct q6v5 *qproc)
{
 qproc->mss_restart = devm_reset_control_get_exclusive(qproc->dev,
             "mss_restart");
 if (IS_ERR(qproc->mss_restart)) {
  dev_err(qproc->dev, "failed to acquire mss restart\n");
  return PTR_ERR(qproc->mss_restart);
 }

 if (qproc->has_alt_reset) {
  qproc->pdc_reset = devm_reset_control_get_exclusive(qproc->dev,
            "pdc_reset");
  if (IS_ERR(qproc->pdc_reset)) {
   dev_err(qproc->dev, "failed to acquire pdc reset\n");
   return PTR_ERR(qproc->pdc_reset);
  }
 }

 return 0;
}
