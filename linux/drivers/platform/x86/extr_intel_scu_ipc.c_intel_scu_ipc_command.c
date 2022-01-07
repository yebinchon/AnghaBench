
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_scu_ipc_dev {int * dev; } ;


 int ENODEV ;
 int intel_scu_ipc_check_status (struct intel_scu_ipc_dev*) ;
 int ipc_command (struct intel_scu_ipc_dev*,int) ;
 int ipc_data_readl (struct intel_scu_ipc_dev*,int) ;
 int ipc_data_writel (struct intel_scu_ipc_dev*,int ,int) ;
 struct intel_scu_ipc_dev ipcdev ;
 int ipclock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int intel_scu_ipc_command(int cmd, int sub, u32 *in, int inlen,
     u32 *out, int outlen)
{
 struct intel_scu_ipc_dev *scu = &ipcdev;
 int i, err;

 mutex_lock(&ipclock);
 if (scu->dev == ((void*)0)) {
  mutex_unlock(&ipclock);
  return -ENODEV;
 }

 for (i = 0; i < inlen; i++)
  ipc_data_writel(scu, *in++, 4 * i);

 ipc_command(scu, (inlen << 16) | (sub << 12) | cmd);
 err = intel_scu_ipc_check_status(scu);

 if (!err) {
  for (i = 0; i < outlen; i++)
   *out++ = ipc_data_readl(scu, 4 * i);
 }

 mutex_unlock(&ipclock);
 return err;
}
