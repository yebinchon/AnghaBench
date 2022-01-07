
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_config {int num_supplicants; int supplied_to; } ;
struct lp8727_psy {void* ac; void* usb; void* batt; } ;
struct lp8727_chg {int dev; struct lp8727_psy* psy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int battery_supplied_to ;
 struct lp8727_psy* devm_kzalloc (int ,int,int ) ;
 int lp8727_ac_desc ;
 int lp8727_batt_desc ;
 int lp8727_usb_desc ;
 void* power_supply_register (int ,int *,struct power_supply_config*) ;
 int power_supply_unregister (void*) ;

__attribute__((used)) static int lp8727_register_psy(struct lp8727_chg *pchg)
{
 struct power_supply_config psy_cfg = {};
 struct lp8727_psy *psy;

 psy = devm_kzalloc(pchg->dev, sizeof(*psy), GFP_KERNEL);
 if (!psy)
  return -ENOMEM;

 pchg->psy = psy;

 psy_cfg.supplied_to = battery_supplied_to;
 psy_cfg.num_supplicants = ARRAY_SIZE(battery_supplied_to);

 psy->ac = power_supply_register(pchg->dev, &lp8727_ac_desc, &psy_cfg);
 if (IS_ERR(psy->ac))
  goto err_psy_ac;

 psy->usb = power_supply_register(pchg->dev, &lp8727_usb_desc,
      &psy_cfg);
 if (IS_ERR(psy->usb))
  goto err_psy_usb;

 psy->batt = power_supply_register(pchg->dev, &lp8727_batt_desc, ((void*)0));
 if (IS_ERR(psy->batt))
  goto err_psy_batt;

 return 0;

err_psy_batt:
 power_supply_unregister(psy->usb);
err_psy_usb:
 power_supply_unregister(psy->ac);
err_psy_ac:
 return -EPERM;
}
