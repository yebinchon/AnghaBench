
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ ipc_base; int * dev; } ;


 int EINVAL ;
 int ENODEV ;
 int IPC_CMD_SIZE ;
 int IPC_CMD_SUBCMD ;
 int IPC_DATA_BUFFER_SIZE ;
 scalar_t__ IPC_DPTR ;
 scalar_t__ IPC_SPTR ;
 int intel_pmc_ipc_check_status () ;
 int ipc_data_readl (int) ;
 int ipc_data_writel (int,int) ;
 int ipc_send_command (int) ;
 TYPE_1__ ipcdev ;
 int ipclock ;
 int memcpy (int*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int writel (int,scalar_t__) ;

int intel_pmc_ipc_raw_cmd(u32 cmd, u32 sub, u8 *in, u32 inlen, u32 *out,
     u32 outlen, u32 dptr, u32 sptr)
{
 u32 wbuf[4] = { 0 };
 int ret;
 int i;

 if (inlen > IPC_DATA_BUFFER_SIZE || outlen > IPC_DATA_BUFFER_SIZE / 4)
  return -EINVAL;

 mutex_lock(&ipclock);
 if (ipcdev.dev == ((void*)0)) {
  mutex_unlock(&ipclock);
  return -ENODEV;
 }
 memcpy(wbuf, in, inlen);
 writel(dptr, ipcdev.ipc_base + IPC_DPTR);
 writel(sptr, ipcdev.ipc_base + IPC_SPTR);

 for (i = 0; i < ((inlen + 3) / 4); i++)
  ipc_data_writel(wbuf[i], 4 * i);
 ipc_send_command((inlen << IPC_CMD_SIZE) |
   (sub << IPC_CMD_SUBCMD) | cmd);
 ret = intel_pmc_ipc_check_status();
 if (!ret) {

  for (i = 0; i < outlen; i++)
   *out++ = ipc_data_readl(4 * i);
 }
 mutex_unlock(&ipclock);

 return ret;
}
