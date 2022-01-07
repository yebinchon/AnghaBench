
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_portal_group {int tpg_access_lock; } ;


 int mutex_unlock (int *) ;

void iscsit_put_tpg(struct iscsi_portal_group *tpg)
{
 mutex_unlock(&tpg->tpg_access_lock);
}
