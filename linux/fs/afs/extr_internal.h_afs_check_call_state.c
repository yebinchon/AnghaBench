
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int state; } ;
typedef enum afs_call_state { ____Placeholder_afs_call_state } afs_call_state ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline bool afs_check_call_state(struct afs_call *call,
     enum afs_call_state state)
{
 return READ_ONCE(call->state) == state;
}
