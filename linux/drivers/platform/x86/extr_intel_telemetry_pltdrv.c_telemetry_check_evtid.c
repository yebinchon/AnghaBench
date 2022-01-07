
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct telemetry_unit_config {scalar_t__ ssram_evts_used; } ;
typedef enum telemetry_unit { ____Placeholder_telemetry_unit } telemetry_unit ;
typedef enum telemetry_action { ____Placeholder_telemetry_action } telemetry_action ;


 int EINVAL ;

 scalar_t__ TELEM_MAX_EVENTS_SRAM ;


 int pr_err (char*,int) ;
 int telem_get_unitconfig (int,struct telemetry_unit_config**) ;

__attribute__((used)) static int telemetry_check_evtid(enum telemetry_unit telem_unit,
     u32 *evtmap, u8 len,
     enum telemetry_action action)
{
 struct telemetry_unit_config *unit_config;
 int ret;

 ret = telem_get_unitconfig(telem_unit, &unit_config);
 if (ret < 0)
  return ret;

 switch (action) {
 case 129:
  if (len > TELEM_MAX_EVENTS_SRAM)
   return -EINVAL;

  break;

 case 128:
  if (len > TELEM_MAX_EVENTS_SRAM)
   return -EINVAL;

  if ((len > 0) && (evtmap == ((void*)0)))
   return -EINVAL;

  break;

 case 130:
  if ((len + unit_config->ssram_evts_used) >
      TELEM_MAX_EVENTS_SRAM)
   return -EINVAL;

  if ((len > 0) && (evtmap == ((void*)0)))
   return -EINVAL;

  break;

 default:
  pr_err("Unknown Telemetry action specified %d\n", action);
  return -EINVAL;
 }

 return 0;
}
