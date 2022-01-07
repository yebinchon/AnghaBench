
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcom_config {int rf_generation; int rf_our_slot; } ;
struct dlm_rcom {int rc_header; scalar_t__ rc_buf; } ;
struct dlm_member {int generation; int slot; } ;
struct dlm_ls {int dummy; } ;


 int dlm_slots_version (int *) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

void dlm_slot_save(struct dlm_ls *ls, struct dlm_rcom *rc,
     struct dlm_member *memb)
{
 struct rcom_config *rf = (struct rcom_config *)rc->rc_buf;

 if (!dlm_slots_version(&rc->rc_header))
  return;

 memb->slot = le16_to_cpu(rf->rf_our_slot);
 memb->generation = le32_to_cpu(rf->rf_generation);
}
