
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int IPCMSG_PCNTRL ;
 int IPC_CMD_PCNTRL_W ;
 int pwr_reg_rdwr (int *,int *,int,int ,int ) ;

int intel_scu_ipc_iowrite32(u16 addr, u32 data)
{
 u16 x[4] = {addr, addr + 1, addr + 2, addr + 3};
 return pwr_reg_rdwr(x, (u8 *)&data, 4, IPCMSG_PCNTRL, IPC_CMD_PCNTRL_W);
}
