
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_target {scalar_t__ target_state; int block_size; int inter_byte; int inter_block; int virt_targ_id; scalar_t__ identifier_len; int flags; int phys_targ_id; } ;
struct esas2r_disc_context {scalar_t__ curr_virt_id; int interleave; int block_size; int raid_grp_name; } ;
struct esas2r_adapter {struct esas2r_target* targetdb; } ;


 scalar_t__ ESAS2R_MAX_TARGETS ;
 int ESAS2R_TARG_ID_INV ;
 int TF_PASS_THRU ;
 int TF_USED ;
 scalar_t__ TS_PRESENT ;
 int esas2r_bugon () ;
 int esas2r_hdebug (char*,...) ;
 int esas2r_targ_get_id (struct esas2r_target*,struct esas2r_adapter*) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;

struct esas2r_target *esas2r_targ_db_add_raid(struct esas2r_adapter *a,
           struct esas2r_disc_context *
           dc)
{
 struct esas2r_target *t;

 esas2r_trace_enter();

 if (dc->curr_virt_id >= ESAS2R_MAX_TARGETS) {
  esas2r_bugon();
  esas2r_trace_exit();
  return ((void*)0);
 }

 t = a->targetdb + dc->curr_virt_id;

 if (t->target_state == TS_PRESENT) {
  esas2r_trace_exit();
  return ((void*)0);
 }

 esas2r_hdebug("add RAID %s, T:%d", dc->raid_grp_name,
        esas2r_targ_get_id(
         t,
         a));

 if (dc->interleave == 0
     || dc->block_size == 0) {


  esas2r_hdebug("invalid RAID group dimensions");

  esas2r_trace_exit();

  return ((void*)0);
 }

 t->block_size = dc->block_size;
 t->inter_byte = dc->interleave;
 t->inter_block = dc->interleave / dc->block_size;
 t->virt_targ_id = dc->curr_virt_id;
 t->phys_targ_id = ESAS2R_TARG_ID_INV;

 t->flags &= ~TF_PASS_THRU;
 t->flags |= TF_USED;

 t->identifier_len = 0;

 t->target_state = TS_PRESENT;

 return t;
}
