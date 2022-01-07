
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tb_xdomain {int link; } ;
struct tb {int nhi; } ;


 scalar_t__ NHI_MAILBOX_DISCONNECT_PA ;
 scalar_t__ NHI_MAILBOX_DISCONNECT_PB ;
 int nhi_mailbox_cmd (int ,scalar_t__,int) ;
 scalar_t__ tb_phy_port_from_link (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int icm_fr_disconnect_xdomain_paths(struct tb *tb, struct tb_xdomain *xd)
{
 u8 phy_port;
 u8 cmd;

 phy_port = tb_phy_port_from_link(xd->link);
 if (phy_port == 0)
  cmd = NHI_MAILBOX_DISCONNECT_PA;
 else
  cmd = NHI_MAILBOX_DISCONNECT_PB;

 nhi_mailbox_cmd(tb->nhi, cmd, 1);
 usleep_range(10, 50);
 nhi_mailbox_cmd(tb->nhi, cmd, 2);
 return 0;
}
