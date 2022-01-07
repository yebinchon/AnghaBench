
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct kempld_wdt_stage {int mask; int id; } ;
struct kempld_wdt_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int pld_clock; } ;


 int EINVAL ;
 int KEMPLD_WDT_STAGE_CFG (int ) ;
 int KEMPLD_WDT_STAGE_TIMEOUT (int ) ;
 size_t PRESCALER_21 ;
 int STAGE_CFG_PRESCALER_MASK ;
 int STAGE_CFG_SET_PRESCALER (size_t) ;
 int do_div (int,int) ;
 int kempld_get_mutex (struct kempld_device_data*) ;
 int* kempld_prescaler ;
 int kempld_read8 (struct kempld_device_data*,int ) ;
 int kempld_release_mutex (struct kempld_device_data*) ;
 int kempld_write32 (struct kempld_device_data*,int ,int) ;
 int kempld_write8 (struct kempld_device_data*,int ,int ) ;

__attribute__((used)) static int kempld_wdt_set_stage_timeout(struct kempld_wdt_data *wdt_data,
     struct kempld_wdt_stage *stage,
     unsigned int timeout)
{
 struct kempld_device_data *pld = wdt_data->pld;
 u32 prescaler;
 u64 stage_timeout64;
 u32 stage_timeout;
 u32 remainder;
 u8 stage_cfg;

 prescaler = kempld_prescaler[PRESCALER_21];

 if (!stage)
  return -EINVAL;

 stage_timeout64 = (u64)timeout * pld->pld_clock;
 remainder = do_div(stage_timeout64, prescaler);
 if (remainder)
  stage_timeout64++;

 if (stage_timeout64 > stage->mask)
  return -EINVAL;

 stage_timeout = stage_timeout64 & stage->mask;

 kempld_get_mutex(pld);
 stage_cfg = kempld_read8(pld, KEMPLD_WDT_STAGE_CFG(stage->id));
 stage_cfg &= ~STAGE_CFG_PRESCALER_MASK;
 stage_cfg |= STAGE_CFG_SET_PRESCALER(PRESCALER_21);
 kempld_write8(pld, KEMPLD_WDT_STAGE_CFG(stage->id), stage_cfg);
 kempld_write32(pld, KEMPLD_WDT_STAGE_TIMEOUT(stage->id),
   stage_timeout);
 kempld_release_mutex(pld);

 return 0;
}
