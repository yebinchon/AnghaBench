
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct telemetry_evtlog {int dummy; } ;
typedef enum telemetry_unit { ____Placeholder_telemetry_unit } telemetry_unit ;
struct TYPE_2__ {int telem_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int telemetry_plt_raw_read_eventlog (int,struct telemetry_evtlog*,int,int) ;
 TYPE_1__* telm_conf ;

__attribute__((used)) static int telemetry_plt_read_eventlog(enum telemetry_unit telem_unit,
  struct telemetry_evtlog *evtlog, int len, int log_all_evts)
{
 int ret;

 mutex_lock(&(telm_conf->telem_lock));
 ret = telemetry_plt_raw_read_eventlog(telem_unit, evtlog,
           len, log_all_evts);
 mutex_unlock(&(telm_conf->telem_lock));

 return ret;
}
