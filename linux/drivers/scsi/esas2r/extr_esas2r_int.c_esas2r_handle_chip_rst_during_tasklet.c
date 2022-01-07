
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int flags; } ;


 int AF_CHPRST_DETECTED ;
 int AF_CHPRST_NEEDED ;
 int AF_CHPRST_STARTED ;
 int AF_DEGRADED_MODE ;
 int AF_FIRST_INIT ;
 int AF_POWER_MGT ;
 int ESAS2R_LOG_CRIT ;
 int clear_bit (int ,int *) ;
 int esas2r_check_adapter (struct esas2r_adapter*) ;
 int esas2r_disable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_enable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_init_adapter_hw (struct esas2r_adapter*,int ) ;
 int esas2r_log (int ,char*) ;
 int esas2r_send_reset_ae (struct esas2r_adapter*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void esas2r_handle_chip_rst_during_tasklet(struct esas2r_adapter *a)
{
 while (test_bit(AF_CHPRST_DETECTED, &a->flags)) {





  if (!test_bit(AF_DEGRADED_MODE, &a->flags) &&
      !test_bit(AF_POWER_MGT, &a->flags))
   esas2r_disable_chip_interrupts(a);


  esas2r_check_adapter(a);
  esas2r_init_adapter_hw(a, 0);

  if (test_bit(AF_CHPRST_NEEDED, &a->flags))
   break;

  if (test_bit(AF_POWER_MGT, &a->flags)) {

   if (test_bit(AF_FIRST_INIT, &a->flags)) {

    esas2r_log(ESAS2R_LOG_CRIT,
        "The firmware was reset during a normal power-up sequence");
   } else {

    clear_bit(AF_POWER_MGT, &a->flags);
    esas2r_send_reset_ae(a, 1);
   }
  } else {

   if (test_bit(AF_FIRST_INIT, &a->flags)) {

   } else {

    esas2r_send_reset_ae(a, 0);
   }

   esas2r_log(ESAS2R_LOG_CRIT,
       "Recovering from a chip reset while the chip was online");
  }

  clear_bit(AF_CHPRST_STARTED, &a->flags);
  esas2r_enable_chip_interrupts(a);





  clear_bit(AF_CHPRST_DETECTED, &a->flags);
 }
}
