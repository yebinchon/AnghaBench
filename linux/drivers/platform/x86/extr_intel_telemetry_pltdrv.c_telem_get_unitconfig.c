
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct telemetry_unit_config {int dummy; } ;
typedef enum telemetry_unit { ____Placeholder_telemetry_unit } telemetry_unit ;
struct TYPE_2__ {struct telemetry_unit_config ioss_config; struct telemetry_unit_config pss_config; } ;


 int EINVAL ;
 int TELEM_IOSS ;
 int TELEM_PSS ;
 TYPE_1__* telm_conf ;

__attribute__((used)) static inline int telem_get_unitconfig(enum telemetry_unit telem_unit,
         struct telemetry_unit_config **unit_config)
{
 if (telem_unit == TELEM_PSS)
  *unit_config = &(telm_conf->pss_config);
 else if (telem_unit == TELEM_IOSS)
  *unit_config = &(telm_conf->ioss_config);
 else
  return -EINVAL;

 return 0;

}
