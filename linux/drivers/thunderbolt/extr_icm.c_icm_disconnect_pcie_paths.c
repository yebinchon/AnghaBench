
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int nhi; } ;


 int NHI_MAILBOX_DISCONNECT_PCIE_PATHS ;
 int nhi_mailbox_cmd (int ,int ,int ) ;

__attribute__((used)) static int icm_disconnect_pcie_paths(struct tb *tb)
{
 return nhi_mailbox_cmd(tb->nhi, NHI_MAILBOX_DISCONNECT_PCIE_PATHS, 0);
}
