
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {int active_low; int intr_en; int mode; void* alarm_filter; void* throt_period; void* alarm_cnt_thresh; } ;
struct soctherm_throt_cfg {TYPE_1__ oc_cfg; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int OC_THROTTLE_MODE_BRIEF ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,void**) ;

__attribute__((used)) static void soctherm_oc_cfg_parse(struct device *dev,
    struct device_node *np_oc,
    struct soctherm_throt_cfg *stc)
{
 u32 val;

 if (of_property_read_bool(np_oc, "nvidia,polarity-active-low"))
  stc->oc_cfg.active_low = 1;
 else
  stc->oc_cfg.active_low = 0;

 if (!of_property_read_u32(np_oc, "nvidia,count-threshold", &val)) {
  stc->oc_cfg.intr_en = 1;
  stc->oc_cfg.alarm_cnt_thresh = val;
 }

 if (!of_property_read_u32(np_oc, "nvidia,throttle-period-us", &val))
  stc->oc_cfg.throt_period = val;

 if (!of_property_read_u32(np_oc, "nvidia,alarm-filter", &val))
  stc->oc_cfg.alarm_filter = val;


 stc->oc_cfg.mode = OC_THROTTLE_MODE_BRIEF;
}
