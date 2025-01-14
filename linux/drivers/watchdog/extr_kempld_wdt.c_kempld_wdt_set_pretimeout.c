
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {unsigned int timeout; } ;
struct kempld_wdt_stage {int mask; } ;
struct kempld_wdt_data {unsigned int pretimeout; struct kempld_wdt_stage* stage; } ;


 int ACTION_NMI ;
 int ACTION_NONE ;
 int EINVAL ;
 int ENXIO ;
 size_t STAGE_PRETIMEOUT ;
 int kempld_wdt_set_stage_action (struct kempld_wdt_data*,struct kempld_wdt_stage*,int ) ;
 int kempld_wdt_set_stage_timeout (struct kempld_wdt_data*,struct kempld_wdt_stage*,unsigned int) ;
 struct kempld_wdt_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int kempld_wdt_set_pretimeout(struct watchdog_device *wdd,
     unsigned int pretimeout)
{
 struct kempld_wdt_data *wdt_data = watchdog_get_drvdata(wdd);
 struct kempld_wdt_stage *pretimeout_stage;
 u8 action = ACTION_NONE;
 int ret;

 pretimeout_stage = &wdt_data->stage[STAGE_PRETIMEOUT];

 if (!pretimeout_stage->mask)
  return -ENXIO;

 if (pretimeout > wdd->timeout)
  return -EINVAL;

 if (pretimeout > 0)
  action = ACTION_NMI;

 ret = kempld_wdt_set_stage_action(wdt_data, pretimeout_stage,
      action);
 if (ret)
  return ret;
 ret = kempld_wdt_set_stage_timeout(wdt_data, pretimeout_stage,
      wdd->timeout - pretimeout);
 if (ret)
  return ret;

 wdt_data->pretimeout = pretimeout;
 return 0;
}
