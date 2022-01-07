
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int nhi; } ;


 int NHI_MAILBOX_SAVE_DEVS ;
 int nhi_mailbox_cmd (int ,int ,int ) ;

__attribute__((used)) static void icm_fr_save_devices(struct tb *tb)
{
 nhi_mailbox_cmd(tb->nhi, NHI_MAILBOX_SAVE_DEVS, 0);
}
