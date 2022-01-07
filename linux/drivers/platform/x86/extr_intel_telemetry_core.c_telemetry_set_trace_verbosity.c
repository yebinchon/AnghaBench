
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef enum telemetry_unit { ____Placeholder_telemetry_unit } telemetry_unit ;
struct TYPE_4__ {TYPE_1__* telem_ops; } ;
struct TYPE_3__ {int (* set_trace_verbosity ) (int,int ) ;} ;


 int stub1 (int,int ) ;
 TYPE_2__ telm_core_conf ;

int telemetry_set_trace_verbosity(enum telemetry_unit telem_unit, u32 verbosity)
{
 return telm_core_conf.telem_ops->set_trace_verbosity(telem_unit,
            verbosity);
}
