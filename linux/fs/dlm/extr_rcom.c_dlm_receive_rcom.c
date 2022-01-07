
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct rcom_lock {int dummy; } ;
struct TYPE_2__ {int h_length; } ;
struct dlm_rcom {int rc_type; scalar_t__ rc_seq_reply; scalar_t__ rc_seq; TYPE_1__ rc_header; } ;
struct dlm_ls {int ls_recover_status; scalar_t__ ls_recover_seq; int ls_generation; int ls_recover_lock; int ls_flags; } ;
 int DLM_RS_DIR ;
 int DLM_RS_NODES ;
 int LSFL_RECOVER_STOP ;
 int dlm_recover_process_copy (struct dlm_ls*,struct dlm_rcom*) ;
 int log_error (struct dlm_ls*,char*,int,...) ;
 int log_limit (struct dlm_ls*,char*,int,int,unsigned long long,unsigned long long,unsigned long long,int,int ) ;
 int receive_rcom_lock (struct dlm_ls*,struct dlm_rcom*) ;
 int receive_rcom_lookup (struct dlm_ls*,struct dlm_rcom*) ;
 int receive_rcom_lookup_reply (struct dlm_ls*,struct dlm_rcom*) ;
 int receive_rcom_names (struct dlm_ls*,struct dlm_rcom*) ;
 int receive_rcom_status (struct dlm_ls*,struct dlm_rcom*) ;
 int receive_sync_reply (struct dlm_ls*,struct dlm_rcom*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

void dlm_receive_rcom(struct dlm_ls *ls, struct dlm_rcom *rc, int nodeid)
{
 int lock_size = sizeof(struct dlm_rcom) + sizeof(struct rcom_lock);
 int stop, reply = 0, names = 0, lookup = 0, lock = 0;
 uint32_t status;
 uint64_t seq;

 switch (rc->rc_type) {
 case 128:
  reply = 1;
  break;
 case 131:
  names = 1;
  break;
 case 130:
  names = 1;
  reply = 1;
  break;
 case 133:
  lookup = 1;
  break;
 case 132:
  lookup = 1;
  reply = 1;
  break;
 case 135:
  lock = 1;
  break;
 case 134:
  lock = 1;
  reply = 1;
  break;
 };

 spin_lock(&ls->ls_recover_lock);
 status = ls->ls_recover_status;
 stop = test_bit(LSFL_RECOVER_STOP, &ls->ls_flags);
 seq = ls->ls_recover_seq;
 spin_unlock(&ls->ls_recover_lock);

 if (stop && (rc->rc_type != 129))
  goto ignore;

 if (reply && (rc->rc_seq_reply != seq))
  goto ignore;

 if (!(status & DLM_RS_NODES) && (names || lookup || lock))
  goto ignore;

 if (!(status & DLM_RS_DIR) && (lookup || lock))
  goto ignore;

 switch (rc->rc_type) {
 case 129:
  receive_rcom_status(ls, rc);
  break;

 case 131:
  receive_rcom_names(ls, rc);
  break;

 case 133:
  receive_rcom_lookup(ls, rc);
  break;

 case 135:
  if (rc->rc_header.h_length < lock_size)
   goto Eshort;
  receive_rcom_lock(ls, rc);
  break;

 case 128:
  receive_sync_reply(ls, rc);
  break;

 case 130:
  receive_sync_reply(ls, rc);
  break;

 case 132:
  receive_rcom_lookup_reply(ls, rc);
  break;

 case 134:
  if (rc->rc_header.h_length < lock_size)
   goto Eshort;
  dlm_recover_process_copy(ls, rc);
  break;

 default:
  log_error(ls, "receive_rcom bad type %d", rc->rc_type);
 }
 return;

ignore:
 log_limit(ls, "dlm_receive_rcom ignore msg %d "
    "from %d %llu %llu recover seq %llu sts %x gen %u",
     rc->rc_type,
     nodeid,
     (unsigned long long)rc->rc_seq,
     (unsigned long long)rc->rc_seq_reply,
     (unsigned long long)seq,
     status, ls->ls_generation);
 return;
Eshort:
 log_error(ls, "recovery message %d from %d is too short",
    rc->rc_type, nodeid);
}
