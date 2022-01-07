
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_portal_group {int tpg_access_lock; } ;


 int mutex_lock_interruptible (int *) ;

int iscsit_get_tpg(
 struct iscsi_portal_group *tpg)
{
 return mutex_lock_interruptible(&tpg->tpg_access_lock);
}
