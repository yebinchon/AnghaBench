
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tiqn {int tiqn; int tiqn_index; int tiqn_list; } ;


 int idr_remove (int *,int ) ;
 scalar_t__ iscsit_set_tiqn_shutdown (struct iscsi_tiqn*) ;
 int iscsit_wait_for_tiqn (struct iscsi_tiqn*) ;
 int kfree (struct iscsi_tiqn*) ;
 int list_del (int *) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tiqn_idr ;
 int tiqn_lock ;

void iscsit_del_tiqn(struct iscsi_tiqn *tiqn)
{






 if (iscsit_set_tiqn_shutdown(tiqn) < 0) {
  pr_err("iscsit_set_tiqn_shutdown() failed\n");
  return;
 }

 iscsit_wait_for_tiqn(tiqn);

 spin_lock(&tiqn_lock);
 list_del(&tiqn->tiqn_list);
 idr_remove(&tiqn_idr, tiqn->tiqn_index);
 spin_unlock(&tiqn_lock);

 pr_debug("CORE[0] - Deleted iSCSI Target IQN: %s\n",
   tiqn->tiqn);
 kfree(tiqn);
}
