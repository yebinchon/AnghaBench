
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kempld_wdt_stage {int id; int mask; } ;
struct kempld_wdt_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;


 int ACTION_RESET ;
 int EINVAL ;
 int KEMPLD_WDT_STAGE_CFG (int ) ;
 int STAGE_CFG_ACTION_MASK ;
 int STAGE_CFG_ASSERT ;
 int kempld_get_mutex (struct kempld_device_data*) ;
 int kempld_read8 (struct kempld_device_data*,int ) ;
 int kempld_release_mutex (struct kempld_device_data*) ;
 int kempld_write8 (struct kempld_device_data*,int ,int) ;

__attribute__((used)) static int kempld_wdt_set_stage_action(struct kempld_wdt_data *wdt_data,
     struct kempld_wdt_stage *stage,
     u8 action)
{
 struct kempld_device_data *pld = wdt_data->pld;
 u8 stage_cfg;

 if (!stage || !stage->mask)
  return -EINVAL;

 kempld_get_mutex(pld);
 stage_cfg = kempld_read8(pld, KEMPLD_WDT_STAGE_CFG(stage->id));
 stage_cfg &= ~STAGE_CFG_ACTION_MASK;
 stage_cfg |= (action & STAGE_CFG_ACTION_MASK);

 if (action == ACTION_RESET)
  stage_cfg |= STAGE_CFG_ASSERT;
 else
  stage_cfg &= ~STAGE_CFG_ASSERT;

 kempld_write8(pld, KEMPLD_WDT_STAGE_CFG(stage->id), stage_cfg);
 kempld_release_mutex(pld);

 return 0;
}
