
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int IPCMSG_PCNTRL ;
 int IPC_CMD_PCNTRL_M ;
 int pwr_reg_rdwr (int *,int *,int,int ,int ) ;

int intel_scu_ipc_update_register(u16 addr, u8 bits, u8 mask)
{
 u8 data[2] = { bits, mask };
 return pwr_reg_rdwr(&addr, data, 1, IPCMSG_PCNTRL, IPC_CMD_PCNTRL_M);
}
