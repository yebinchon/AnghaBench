
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct telemetry_plt_config {int dummy; } ;
struct telemetry_core_ops {int dummy; } ;
struct TYPE_2__ {struct telemetry_plt_config* plt_config; struct telemetry_core_ops const* telem_ops; } ;


 TYPE_1__ telm_core_conf ;

int telemetry_set_pltdata(const struct telemetry_core_ops *ops,
     struct telemetry_plt_config *pltconfig)
{
 if (ops)
  telm_core_conf.telem_ops = ops;

 if (pltconfig)
  telm_core_conf.plt_config = pltconfig;

 return 0;
}
