
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct intel_scu_ipc_dev {scalar_t__ ipc_base; int * dev; } ;
typedef int cbuf ;


 int ENODEV ;
 int IPC_CMD_PCNTRL_M ;
 int IPC_CMD_PCNTRL_R ;
 int IPC_CMD_PCNTRL_W ;
 int IPC_WWBUF_SIZE ;
 int intel_scu_ipc_check_status (struct intel_scu_ipc_dev*) ;
 int ipc_command (struct intel_scu_ipc_dev*,int) ;
 int ipc_data_readb (struct intel_scu_ipc_dev*,int) ;
 int ipc_data_writel (struct intel_scu_ipc_dev*,int,int) ;
 struct intel_scu_ipc_dev ipcdev ;
 int ipclock ;
 int memcpy_fromio (int*,scalar_t__,int) ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int pwr_reg_rdwr(u16 *addr, u8 *data, u32 count, u32 op, u32 id)
{
 struct intel_scu_ipc_dev *scu = &ipcdev;
 int nc;
 u32 offset = 0;
 int err;
 u8 cbuf[IPC_WWBUF_SIZE];
 u32 *wbuf = (u32 *)&cbuf;

 memset(cbuf, 0, sizeof(cbuf));

 mutex_lock(&ipclock);

 if (scu->dev == ((void*)0)) {
  mutex_unlock(&ipclock);
  return -ENODEV;
 }

 for (nc = 0; nc < count; nc++, offset += 2) {
  cbuf[offset] = addr[nc];
  cbuf[offset + 1] = addr[nc] >> 8;
 }

 if (id == IPC_CMD_PCNTRL_R) {
  for (nc = 0, offset = 0; nc < count; nc++, offset += 4)
   ipc_data_writel(scu, wbuf[nc], offset);
  ipc_command(scu, (count * 2) << 16 | id << 12 | 0 << 8 | op);
 } else if (id == IPC_CMD_PCNTRL_W) {
  for (nc = 0; nc < count; nc++, offset += 1)
   cbuf[offset] = data[nc];
  for (nc = 0, offset = 0; nc < count; nc++, offset += 4)
   ipc_data_writel(scu, wbuf[nc], offset);
  ipc_command(scu, (count * 3) << 16 | id << 12 | 0 << 8 | op);
 } else if (id == IPC_CMD_PCNTRL_M) {
  cbuf[offset] = data[0];
  cbuf[offset + 1] = data[1];
  ipc_data_writel(scu, wbuf[0], 0);
  ipc_command(scu, 4 << 16 | id << 12 | 0 << 8 | op);
 }

 err = intel_scu_ipc_check_status(scu);
 if (!err && id == IPC_CMD_PCNTRL_R) {

  memcpy_fromio(cbuf, scu->ipc_base + 0x90, 16);
  for (nc = 0; nc < count; nc++)
   data[nc] = ipc_data_readb(scu, nc);
 }
 mutex_unlock(&ipclock);
 return err;
}
