
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int state; int state_lock; } ;
typedef enum afs_call_state { ____Placeholder_afs_call_state } afs_call_state ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int trace_afs_call_state (struct afs_call*,int,int,int ,int ) ;

__attribute__((used)) static inline bool afs_set_call_state(struct afs_call *call,
          enum afs_call_state from,
          enum afs_call_state to)
{
 bool ok = 0;

 spin_lock_bh(&call->state_lock);
 if (call->state == from) {
  call->state = to;
  trace_afs_call_state(call, from, to, 0, 0);
  ok = 1;
 }
 spin_unlock_bh(&call->state_lock);
 return ok;
}
