
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_length; int h_nodeid; } ;
struct dlm_rcom {scalar_t__ rc_id; TYPE_1__ rc_header; int rc_type; } ;
struct dlm_ls {scalar_t__ ls_rcom_seq; int ls_rcom_spin; int ls_wait_general; int ls_flags; int ls_recover_buf; } ;


 int LSFL_RCOM_READY ;
 int LSFL_RCOM_WAIT ;
 int clear_bit (int ,int *) ;
 int log_debug (struct dlm_ls*,char*,int ,int ,unsigned long long,unsigned long long) ;
 int memcpy (int ,struct dlm_rcom*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void receive_sync_reply(struct dlm_ls *ls, struct dlm_rcom *rc_in)
{
 spin_lock(&ls->ls_rcom_spin);
 if (!test_bit(LSFL_RCOM_WAIT, &ls->ls_flags) ||
     rc_in->rc_id != ls->ls_rcom_seq) {
  log_debug(ls, "reject reply %d from %d seq %llx expect %llx",
     rc_in->rc_type, rc_in->rc_header.h_nodeid,
     (unsigned long long)rc_in->rc_id,
     (unsigned long long)ls->ls_rcom_seq);
  goto out;
 }
 memcpy(ls->ls_recover_buf, rc_in, rc_in->rc_header.h_length);
 set_bit(LSFL_RCOM_READY, &ls->ls_flags);
 clear_bit(LSFL_RCOM_WAIT, &ls->ls_flags);
 wake_up(&ls->ls_wait_general);
 out:
 spin_unlock(&ls->ls_rcom_spin);
}
