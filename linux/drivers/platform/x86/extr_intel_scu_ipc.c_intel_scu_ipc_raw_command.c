
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intel_scu_ipc_dev {scalar_t__ ipc_base; int * dev; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IPC_DPTR ;
 scalar_t__ IPC_SPTR ;
 int intel_scu_ipc_check_status (struct intel_scu_ipc_dev*) ;
 int ipc_command (struct intel_scu_ipc_dev*,int) ;
 int ipc_data_readl (struct intel_scu_ipc_dev*,int) ;
 int ipc_data_writel (struct intel_scu_ipc_dev*,int ,int) ;
 struct intel_scu_ipc_dev ipcdev ;
 int ipclock ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int writel (int ,scalar_t__) ;

int intel_scu_ipc_raw_command(int cmd, int sub, u8 *in, int inlen,
         u32 *out, int outlen, u32 dptr, u32 sptr)
{
 struct intel_scu_ipc_dev *scu = &ipcdev;
 int inbuflen = DIV_ROUND_UP(inlen, 4);
 u32 inbuf[4];
 int i, err;


 if (inbuflen > 4)
  return -EINVAL;

 mutex_lock(&ipclock);
 if (scu->dev == ((void*)0)) {
  mutex_unlock(&ipclock);
  return -ENODEV;
 }

 writel(dptr, scu->ipc_base + IPC_DPTR);
 writel(sptr, scu->ipc_base + IPC_SPTR);
 memcpy(inbuf, in, inlen);

 for (i = 0; i < inbuflen; i++)
  ipc_data_writel(scu, inbuf[i], 4 * i);

 ipc_command(scu, (inlen << 16) | (sub << 12) | cmd);
 err = intel_scu_ipc_check_status(scu);
 if (!err) {
  for (i = 0; i < outlen; i++)
   *out++ = ipc_data_readl(scu, 4 * i);
 }

 mutex_unlock(&ipclock);
 return err;
}
