
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int flags; } ;


 int AF_DEGRADED_MODE ;
 int ESAS2R_LOG_CRIT ;
 int esas2r_log (int ,char*,char*) ;
 int set_bit (int ,int *) ;

bool esas2r_set_degraded_mode(struct esas2r_adapter *a, char *error_str)
{
 set_bit(AF_DEGRADED_MODE, &a->flags);
 esas2r_log(ESAS2R_LOG_CRIT,
     "setting adapter to degraded mode: %s\n", error_str);
 return 0;
}
