
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct controller {int dummy; } ;


 int pcie_do_write_cmd (struct controller*,int ,int ,int) ;

__attribute__((used)) static void pcie_write_cmd_nowait(struct controller *ctrl, u16 cmd, u16 mask)
{
 pcie_do_write_cmd(ctrl, cmd, mask, 0);
}
