
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tiqn {scalar_t__ tiqn_state; int tiqn_state_lock; } ;


 scalar_t__ TIQN_STATE_ACTIVE ;
 scalar_t__ TIQN_STATE_SHUTDOWN ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iscsit_set_tiqn_shutdown(struct iscsi_tiqn *tiqn)
{
 spin_lock(&tiqn->tiqn_state_lock);
 if (tiqn->tiqn_state == TIQN_STATE_ACTIVE) {
  tiqn->tiqn_state = TIQN_STATE_SHUTDOWN;
  spin_unlock(&tiqn->tiqn_state_lock);
  return 0;
 }
 spin_unlock(&tiqn->tiqn_state_lock);

 return -1;
}
