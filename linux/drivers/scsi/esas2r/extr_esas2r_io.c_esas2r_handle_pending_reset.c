
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct esas2r_adapter {scalar_t__ chip_init_time; int max_vdareq_size; int build_sgl; int flags; } ;


 int AF_CHPRST_DETECTED ;
 int AF_LEGACY_SGE_MODE ;
 scalar_t__ DRBL_FORCE_INT ;
 scalar_t__ DRBL_FW_VER_0 ;
 scalar_t__ DRBL_FW_VER_1 ;
 scalar_t__ DRBL_FW_VER_MSK ;
 scalar_t__ ESAS2R_CHPRST_TIME ;
 scalar_t__ ESAS2R_CHPRST_WAIT_TIME ;
 int MU_DOORBELL_OUT ;
 int clear_bit (int ,int *) ;
 int esas2r_build_sg_list_prd ;
 int esas2r_build_sg_list_sge ;
 int esas2r_force_interrupt (struct esas2r_adapter*) ;
 int esas2r_local_reset_adapter (struct esas2r_adapter*) ;
 scalar_t__ esas2r_read_register_dword (struct esas2r_adapter*,int ) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,scalar_t__) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void esas2r_handle_pending_reset(struct esas2r_adapter *a, u32 currtime)
{
 u32 delta = currtime - a->chip_init_time;

 if (delta <= ESAS2R_CHPRST_WAIT_TIME) {

 } else if (delta >= ESAS2R_CHPRST_TIME) {




  esas2r_local_reset_adapter(a);
 } else {

  u32 doorbell;

  doorbell = esas2r_read_register_dword(a, MU_DOORBELL_OUT);
  if (doorbell == 0xFFFFFFFF || !(doorbell & DRBL_FORCE_INT)) {
   esas2r_force_interrupt(a);
  } else {
   u32 ver = (doorbell & DRBL_FW_VER_MSK);


   esas2r_write_register_dword(a, MU_DOORBELL_OUT,
          doorbell);
   if (ver == DRBL_FW_VER_0) {
    set_bit(AF_CHPRST_DETECTED, &a->flags);
    set_bit(AF_LEGACY_SGE_MODE, &a->flags);

    a->max_vdareq_size = 128;
    a->build_sgl = esas2r_build_sg_list_sge;
   } else if (ver == DRBL_FW_VER_1) {
    set_bit(AF_CHPRST_DETECTED, &a->flags);
    clear_bit(AF_LEGACY_SGE_MODE, &a->flags);

    a->max_vdareq_size = 1024;
    a->build_sgl = esas2r_build_sg_list_prd;
   } else {
    esas2r_local_reset_adapter(a);
   }
  }
 }
}
