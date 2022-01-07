
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct afs_volume {int cb_v_break; } ;
struct afs_vnode {unsigned int cb_break; unsigned int cb_s_break; unsigned int cb_v_break; int cb_expires_at; int cb_lock; int fid; int flags; int cb_interest; struct afs_volume* volume; } ;
struct afs_server {int cb_s_break; } ;
struct afs_cb_interest {int server; } ;
typedef enum afs_cb_break_reason { ____Placeholder_afs_cb_break_reason } afs_cb_break_reason ;


 int AFS_VNODE_CB_PROMISED ;
 int AFS_VNODE_DELETED ;
 int AFS_VNODE_ZAP_DATA ;
 unsigned int READ_ONCE (int ) ;
 int __afs_break_callback (struct afs_vnode*,int) ;
 int afs_cb_break_for_lapsed ;
 int afs_cb_break_for_vsbreak ;
 int afs_cb_break_for_zap ;
 int afs_cb_break_no_break ;
 int done_seqretry (int *,int) ;
 int ktime_get_real_seconds () ;
 scalar_t__ need_seqretry (int *,int) ;
 void* rcu_dereference (int ) ;
 int read_seqbegin_or_lock (int *,int*) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_afs_cb_miss (int *,int) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

bool afs_check_validity(struct afs_vnode *vnode)
{
 struct afs_cb_interest *cbi;
 struct afs_server *server;
 struct afs_volume *volume = vnode->volume;
 enum afs_cb_break_reason need_clear = afs_cb_break_no_break;
 time64_t now = ktime_get_real_seconds();
 bool valid;
 unsigned int cb_break, cb_s_break, cb_v_break;
 int seq = 0;

 do {
  read_seqbegin_or_lock(&vnode->cb_lock, &seq);
  cb_v_break = READ_ONCE(volume->cb_v_break);
  cb_break = vnode->cb_break;

  if (test_bit(AFS_VNODE_CB_PROMISED, &vnode->flags)) {
   cbi = rcu_dereference(vnode->cb_interest);
   server = rcu_dereference(cbi->server);
   cb_s_break = READ_ONCE(server->cb_s_break);

   if (vnode->cb_s_break != cb_s_break ||
       vnode->cb_v_break != cb_v_break) {
    vnode->cb_s_break = cb_s_break;
    vnode->cb_v_break = cb_v_break;
    need_clear = afs_cb_break_for_vsbreak;
    valid = 0;
   } else if (test_bit(AFS_VNODE_ZAP_DATA, &vnode->flags)) {
    need_clear = afs_cb_break_for_zap;
    valid = 0;
   } else if (vnode->cb_expires_at - 10 <= now) {
    need_clear = afs_cb_break_for_lapsed;
    valid = 0;
   } else {
    valid = 1;
   }
  } else if (test_bit(AFS_VNODE_DELETED, &vnode->flags)) {
   valid = 1;
  } else {
   vnode->cb_v_break = cb_v_break;
   valid = 0;
  }

 } while (need_seqretry(&vnode->cb_lock, seq));

 done_seqretry(&vnode->cb_lock, seq);

 if (need_clear != afs_cb_break_no_break) {
  write_seqlock(&vnode->cb_lock);
  if (cb_break == vnode->cb_break)
   __afs_break_callback(vnode, need_clear);
  else
   trace_afs_cb_miss(&vnode->fid, need_clear);
  write_sequnlock(&vnode->cb_lock);
  valid = 0;
 }

 return valid;
}
