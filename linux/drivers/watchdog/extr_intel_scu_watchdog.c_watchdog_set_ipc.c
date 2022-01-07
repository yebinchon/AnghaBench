
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;


 int IPC_SET_WATCHDOG_TIMER ;
 int intel_scu_ipc_command (int ,int ,int*,int,int *,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int watchdog_set_ipc(int soft_threshold, int threshold)
{
 u32 *ipc_wbuf;
 u8 cbuf[16] = { '\0' };
 int ipc_ret = 0;

 ipc_wbuf = (u32 *)&cbuf;
 ipc_wbuf[0] = soft_threshold;
 ipc_wbuf[1] = threshold;

 ipc_ret = intel_scu_ipc_command(
   IPC_SET_WATCHDOG_TIMER,
   0,
   ipc_wbuf,
   2,
   ((void*)0),
   0);

 if (ipc_ret != 0)
  pr_err("Error setting SCU watchdog timer: %x\n", ipc_ret);

 return ipc_ret;
}
