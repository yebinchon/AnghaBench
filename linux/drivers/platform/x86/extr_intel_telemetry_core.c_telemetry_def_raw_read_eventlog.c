
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct telemetry_evtlog {int dummy; } ;
typedef enum telemetry_unit { ____Placeholder_telemetry_unit } telemetry_unit ;



__attribute__((used)) static int telemetry_def_raw_read_eventlog(enum telemetry_unit telem_unit,
        struct telemetry_evtlog *evtlog,
        int len, int log_all_evts)
{
 return 0;
}
