
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int flags; } ;


 int AF_OS_RESET ;
 int esas2r_local_reset_adapter (struct esas2r_adapter*) ;
 int esas2r_schedule_tasklet (struct esas2r_adapter*) ;
 int set_bit (int ,int *) ;

void esas2r_reset_adapter(struct esas2r_adapter *a)
{
 set_bit(AF_OS_RESET, &a->flags);
 esas2r_local_reset_adapter(a);
 esas2r_schedule_tasklet(a);
}
