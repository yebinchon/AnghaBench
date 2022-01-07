
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tiqn {scalar_t__ tiqn_access_count; int tiqn_state_lock; } ;


 int msleep (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iscsit_wait_for_tiqn(struct iscsi_tiqn *tiqn)
{



 spin_lock(&tiqn->tiqn_state_lock);
 while (tiqn->tiqn_access_count != 0) {
  spin_unlock(&tiqn->tiqn_state_lock);
  msleep(10);
  spin_lock(&tiqn->tiqn_state_lock);
 }
 spin_unlock(&tiqn->tiqn_state_lock);
}
