
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CMD_T_ABORTED ;
 int CMD_T_ACTIVE ;
 int CMD_T_COMPLETE ;
 int CMD_T_FABRIC_STOP ;
 int CMD_T_SENT ;
 int CMD_T_STOP ;
 int target_append_str (char**,char*) ;

__attribute__((used)) static char *target_ts_to_str(u32 ts)
{
 char *str = ((void*)0);

 if (ts & CMD_T_ABORTED)
  target_append_str(&str, "aborted");
 if (ts & CMD_T_ACTIVE)
  target_append_str(&str, "active");
 if (ts & CMD_T_COMPLETE)
  target_append_str(&str, "complete");
 if (ts & CMD_T_SENT)
  target_append_str(&str, "sent");
 if (ts & CMD_T_STOP)
  target_append_str(&str, "stop");
 if (ts & CMD_T_FABRIC_STOP)
  target_append_str(&str, "fabric_stop");

 return str;
}
