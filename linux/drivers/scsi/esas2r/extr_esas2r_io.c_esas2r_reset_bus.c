
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int flags; } ;


 int AF_BUSRST_NEEDED ;
 int AF_BUSRST_PENDING ;
 int AF_CHPRST_PENDING ;
 int AF_DEGRADED_MODE ;
 int AF_DISC_PENDING ;
 int AF_OS_RESET ;
 int ESAS2R_LOG_INFO ;
 int esas2r_log (int ,char*) ;
 int esas2r_schedule_tasklet (struct esas2r_adapter*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void esas2r_reset_bus(struct esas2r_adapter *a)
{
 esas2r_log(ESAS2R_LOG_INFO, "performing a bus reset");

 if (!test_bit(AF_DEGRADED_MODE, &a->flags) &&
     !test_bit(AF_CHPRST_PENDING, &a->flags) &&
     !test_bit(AF_DISC_PENDING, &a->flags)) {
  set_bit(AF_BUSRST_NEEDED, &a->flags);
  set_bit(AF_BUSRST_PENDING, &a->flags);
  set_bit(AF_OS_RESET, &a->flags);

  esas2r_schedule_tasklet(a);
 }
}
