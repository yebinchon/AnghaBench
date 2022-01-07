
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct afs_call {int state; int error; int state_lock; int abort_code; } ;
typedef enum afs_call_state { ____Placeholder_afs_call_state } afs_call_state ;


 int AFS_CALL_COMPLETE ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int trace_afs_call_done (struct afs_call*) ;
 int trace_afs_call_state (struct afs_call*,int,int,int,int ) ;

__attribute__((used)) static inline void afs_set_call_complete(struct afs_call *call,
      int error, u32 remote_abort)
{
 enum afs_call_state state;
 bool ok = 0;

 spin_lock_bh(&call->state_lock);
 state = call->state;
 if (state != AFS_CALL_COMPLETE) {
  call->abort_code = remote_abort;
  call->error = error;
  call->state = AFS_CALL_COMPLETE;
  trace_afs_call_state(call, state, AFS_CALL_COMPLETE,
         error, remote_abort);
  ok = 1;
 }
 spin_unlock_bh(&call->state_lock);
 if (ok)
  trace_afs_call_done(call);
}
