
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int nhi; int * root_switch; } ;
struct icm {int rescan_work; } ;


 int NHI_MAILBOX_DRV_UNLOADS ;
 int cancel_delayed_work (int *) ;
 int nhi_mailbox_cmd (int ,int ,int ) ;
 struct icm* tb_priv (struct tb*) ;
 int tb_switch_remove (int *) ;

__attribute__((used)) static void icm_stop(struct tb *tb)
{
 struct icm *icm = tb_priv(tb);

 cancel_delayed_work(&icm->rescan_work);
 tb_switch_remove(tb->root_switch);
 tb->root_switch = ((void*)0);
 nhi_mailbox_cmd(tb->nhi, NHI_MAILBOX_DRV_UNLOADS, 0);
}
