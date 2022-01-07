
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u64 ;
typedef unsigned int u32 ;
struct kempld_wdt_stage {unsigned int mask; int id; } ;
struct kempld_wdt_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int pld_clock; } ;


 int KEMPLD_WDT_STAGE_CFG (int ) ;
 int KEMPLD_WDT_STAGE_TIMEOUT (int ) ;
 size_t STAGE_CFG_GET_PRESCALER (int ) ;
 int WARN_ON_ONCE (int) ;
 unsigned int do_div (unsigned int,int ) ;
 unsigned int* kempld_prescaler ;
 unsigned int kempld_read32 (struct kempld_device_data*,int ) ;
 int kempld_read8 (struct kempld_device_data*,int ) ;

__attribute__((used)) static unsigned int kempld_wdt_get_timeout(struct kempld_wdt_data *wdt_data,
      struct kempld_wdt_stage *stage)
{
 struct kempld_device_data *pld = wdt_data->pld;
 unsigned int timeout;
 u64 stage_timeout;
 u32 prescaler;
 u32 remainder;
 u8 stage_cfg;

 if (!stage->mask)
  return 0;

 stage_cfg = kempld_read8(pld, KEMPLD_WDT_STAGE_CFG(stage->id));
 stage_timeout = kempld_read32(pld, KEMPLD_WDT_STAGE_TIMEOUT(stage->id));
 prescaler = kempld_prescaler[STAGE_CFG_GET_PRESCALER(stage_cfg)];

 stage_timeout = (stage_timeout & stage->mask) * prescaler;
 remainder = do_div(stage_timeout, pld->pld_clock);
 if (remainder)
  stage_timeout++;

 timeout = stage_timeout;
 WARN_ON_ONCE(timeout != stage_timeout);

 return timeout;
}
