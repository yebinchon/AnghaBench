
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int nhi; } ;


 int NHI_MAILBOX_DRV_UNLOADS ;
 int nhi_mailbox_cmd (int ,int ,int ) ;

__attribute__((used)) static int icm_runtime_suspend(struct tb *tb)
{
 nhi_mailbox_cmd(tb->nhi, NHI_MAILBOX_DRV_UNLOADS, 0);
 return 0;
}
