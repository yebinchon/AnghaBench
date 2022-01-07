
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lp8788_chg_param {int val; int addr; } ;
struct lp8788_charger_platform_data {int num_chg_params; struct lp8788_chg_param* chg_params; } ;
struct lp8788_charger {struct lp8788_charger_platform_data* pdata; struct lp8788* lp; } ;
struct lp8788 {int dummy; } ;


 int dev_info (int *,char*) ;
 scalar_t__ lp8788_is_valid_charger_register (int ) ;
 int lp8788_write_byte (struct lp8788*,int ,int ) ;

__attribute__((used)) static int lp8788_update_charger_params(struct platform_device *pdev,
     struct lp8788_charger *pchg)
{
 struct lp8788 *lp = pchg->lp;
 struct lp8788_charger_platform_data *pdata = pchg->pdata;
 struct lp8788_chg_param *param;
 int i;
 int ret;

 if (!pdata || !pdata->chg_params) {
  dev_info(&pdev->dev, "skip updating charger parameters\n");
  return 0;
 }


 for (i = 0; i < pdata->num_chg_params; i++) {
  param = pdata->chg_params + i;

  if (lp8788_is_valid_charger_register(param->addr)) {
   ret = lp8788_write_byte(lp, param->addr, param->val);
   if (ret)
    return ret;
  }
 }

 return 0;
}
