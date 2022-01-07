
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct controller {int dummy; } ;


 int CMD_STATUS ;
 int shpc_readw (struct controller*,int ) ;

__attribute__((used)) static inline int is_ctrl_busy(struct controller *ctrl)
{
 u16 cmd_status = shpc_readw(ctrl, CMD_STATUS);
 return cmd_status & 0x1;
}
