
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct esas2r_adapter {int disable_cnt; } ;
typedef int irqreturn_t ;


 int MU_DOORBELL_OUT ;
 scalar_t__ MU_INTSTAT_DRBL ;
 scalar_t__ MU_INTSTAT_POST_OUT ;
 int MU_INT_STATUS_OUT ;
 int MU_OLIS_INT ;
 int MU_OUT_LIST_INT_STAT ;
 scalar_t__ atomic_read (int *) ;
 int esas2r_disable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_do_deferred_processes (struct esas2r_adapter*) ;
 int esas2r_do_tasklet_tasks (struct esas2r_adapter*) ;
 int esas2r_doorbell_interrupt (struct esas2r_adapter*,scalar_t__) ;
 int esas2r_enable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_flush_register_dword (struct esas2r_adapter*,int ) ;
 int esas2r_get_outbound_responses (struct esas2r_adapter*) ;
 scalar_t__ esas2r_read_register_dword (struct esas2r_adapter*,int ) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (scalar_t__) ;

irqreturn_t esas2r_msi_interrupt(int irq, void *dev_id)
{
 struct esas2r_adapter *a = (struct esas2r_adapter *)dev_id;
 u32 intstat;
 u32 doorbell;

 intstat = esas2r_read_register_dword(a, MU_INT_STATUS_OUT);

 if (likely(intstat & MU_INTSTAT_POST_OUT)) {


  esas2r_write_register_dword(a, MU_OUT_LIST_INT_STAT,
         MU_OLIS_INT);
  esas2r_flush_register_dword(a, MU_OUT_LIST_INT_STAT);

  esas2r_get_outbound_responses(a);
 }

 if (unlikely(intstat & MU_INTSTAT_DRBL)) {
  doorbell = esas2r_read_register_dword(a, MU_DOORBELL_OUT);
  if (doorbell != 0)
   esas2r_doorbell_interrupt(a, doorbell);
 }





 esas2r_disable_chip_interrupts(a);
 esas2r_enable_chip_interrupts(a);

 if (likely(atomic_read(&a->disable_cnt) == 0))
  esas2r_do_deferred_processes(a);

 esas2r_do_tasklet_tasks(a);

 return 1;
}
