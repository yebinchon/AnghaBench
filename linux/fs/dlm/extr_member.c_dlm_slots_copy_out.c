
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcom_slot {int ro_slot; int ro_nodeid; } ;
struct rcom_config {int dummy; } ;
struct dlm_slot {int slot; int nodeid; } ;
struct dlm_rcom {scalar_t__ rc_buf; } ;
struct dlm_ls {int ls_slots_size; struct dlm_slot* ls_slots; } ;


 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;

void dlm_slots_copy_out(struct dlm_ls *ls, struct dlm_rcom *rc)
{
 struct dlm_slot *slot;
 struct rcom_slot *ro;
 int i;

 ro = (struct rcom_slot *)(rc->rc_buf + sizeof(struct rcom_config));



 for (i = 0; i < ls->ls_slots_size; i++) {
  slot = &ls->ls_slots[i];
  if (!slot->nodeid)
   continue;
  ro->ro_nodeid = cpu_to_le32(slot->nodeid);
  ro->ro_slot = cpu_to_le16(slot->slot);
  ro++;
 }
}
