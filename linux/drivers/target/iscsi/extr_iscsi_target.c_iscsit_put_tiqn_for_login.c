
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tiqn {int tiqn_state_lock; int tiqn_access_count; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iscsit_put_tiqn_for_login(struct iscsi_tiqn *tiqn)
{
 spin_lock(&tiqn->tiqn_state_lock);
 tiqn->tiqn_access_count--;
 spin_unlock(&tiqn->tiqn_state_lock);
}
