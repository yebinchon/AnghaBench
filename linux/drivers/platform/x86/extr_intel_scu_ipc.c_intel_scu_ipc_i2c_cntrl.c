
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_scu_ipc_dev {int * dev; scalar_t__ i2c_base; } ;


 int EIO ;
 int ENODEV ;
 scalar_t__ I2C_DATA_ADDR ;
 scalar_t__ IPC_I2C_CNTRL_ADDR ;
 int IPC_I2C_READ ;
 int IPC_I2C_WRITE ;
 int dev_err (int *,char*,int) ;
 struct intel_scu_ipc_dev ipcdev ;
 int ipclock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

int intel_scu_ipc_i2c_cntrl(u32 addr, u32 *data)
{
 struct intel_scu_ipc_dev *scu = &ipcdev;
 u32 cmd = 0;

 mutex_lock(&ipclock);
 if (scu->dev == ((void*)0)) {
  mutex_unlock(&ipclock);
  return -ENODEV;
 }
 cmd = (addr >> 24) & 0xFF;
 if (cmd == IPC_I2C_READ) {
  writel(addr, scu->i2c_base + IPC_I2C_CNTRL_ADDR);

  usleep_range(1000, 2000);
  *data = readl(scu->i2c_base + I2C_DATA_ADDR);
 } else if (cmd == IPC_I2C_WRITE) {
  writel(*data, scu->i2c_base + I2C_DATA_ADDR);
  usleep_range(1000, 2000);
  writel(addr, scu->i2c_base + IPC_I2C_CNTRL_ADDR);
 } else {
  dev_err(scu->dev,
   "intel_scu_ipc: I2C INVALID_CMD = 0x%x\n", cmd);

  mutex_unlock(&ipclock);
  return -EIO;
 }
 mutex_unlock(&ipclock);
 return 0;
}
