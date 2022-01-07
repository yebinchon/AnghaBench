
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct telemetry_evtlog {int telem_evtlog; } ;
struct seq_file {int dummy; } ;


 int TELEM_IOSS ;
 int TELEM_MAX_OS_ALLOCATED_EVENTS ;
 int seq_printf (struct seq_file*,char*,char const*,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int telemetry_get_evtname (int ,char const**,int) ;
 int telemetry_read_eventlog (int ,struct telemetry_evtlog*,int) ;

__attribute__((used)) static int telem_ioss_states_show(struct seq_file *s, void *unused)
{
 struct telemetry_evtlog evtlog[TELEM_MAX_OS_ALLOCATED_EVENTS];
 const char *name[TELEM_MAX_OS_ALLOCATED_EVENTS];
 int index, ret, err;

 ret = telemetry_read_eventlog(TELEM_IOSS, evtlog,
          TELEM_MAX_OS_ALLOCATED_EVENTS);
 if (ret < 0)
  return ret;

 err = telemetry_get_evtname(TELEM_IOSS, name,
        TELEM_MAX_OS_ALLOCATED_EVENTS);
 if (err < 0)
  return err;

 seq_puts(s, "--------------------------------------\n");
 seq_puts(s, "\tI0SS TELEMETRY EVENTLOG\n");
 seq_puts(s, "--------------------------------------\n");
 for (index = 0; index < ret; index++) {
  seq_printf(s, "%-32s 0x%llx\n",
      name[index], evtlog[index].telem_evtlog);
 }

 return 0;
}
