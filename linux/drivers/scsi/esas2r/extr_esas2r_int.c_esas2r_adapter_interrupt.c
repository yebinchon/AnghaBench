
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct esas2r_adapter {int int_stat; int disable_cnt; int int_mask; } ;


 int ESAS2R_INT_STS_MASK ;
 int MU_DOORBELL_OUT ;
 int MU_INTSTAT_DRBL ;
 int MU_INTSTAT_POST_OUT ;
 int MU_OLIS_INT ;
 int MU_OUT_LIST_INT_STAT ;
 scalar_t__ atomic_read (int *) ;
 int esas2r_do_deferred_processes (struct esas2r_adapter*) ;
 int esas2r_doorbell_interrupt (struct esas2r_adapter*,scalar_t__) ;
 int esas2r_enable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_flush_register_dword (struct esas2r_adapter*,int ) ;
 int esas2r_get_outbound_responses (struct esas2r_adapter*) ;
 scalar_t__ esas2r_read_register_dword (struct esas2r_adapter*,int ) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

void esas2r_adapter_interrupt(struct esas2r_adapter *a)
{
 u32 doorbell;

 if (likely(a->int_stat & MU_INTSTAT_POST_OUT)) {

  esas2r_write_register_dword(a, MU_OUT_LIST_INT_STAT,
         MU_OLIS_INT);
  esas2r_flush_register_dword(a, MU_OUT_LIST_INT_STAT);
  esas2r_get_outbound_responses(a);
 }

 if (unlikely(a->int_stat & MU_INTSTAT_DRBL)) {
  doorbell = esas2r_read_register_dword(a, MU_DOORBELL_OUT);
  if (doorbell != 0)
   esas2r_doorbell_interrupt(a, doorbell);
 }

 a->int_mask = ESAS2R_INT_STS_MASK;

 esas2r_enable_chip_interrupts(a);

 if (likely(atomic_read(&a->disable_cnt) == 0))
  esas2r_do_deferred_processes(a);
}
