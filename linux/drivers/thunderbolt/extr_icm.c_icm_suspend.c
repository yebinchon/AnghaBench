
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int nhi; } ;
struct icm {int (* save_devices ) (struct tb*) ;} ;


 int NHI_MAILBOX_DRV_UNLOADS ;
 int nhi_mailbox_cmd (int ,int ,int ) ;
 int stub1 (struct tb*) ;
 struct icm* tb_priv (struct tb*) ;

__attribute__((used)) static int icm_suspend(struct tb *tb)
{
 struct icm *icm = tb_priv(tb);

 if (icm->save_devices)
  icm->save_devices(tb);

 nhi_mailbox_cmd(tb->nhi, NHI_MAILBOX_DRV_UNLOADS, 0);
 return 0;
}
