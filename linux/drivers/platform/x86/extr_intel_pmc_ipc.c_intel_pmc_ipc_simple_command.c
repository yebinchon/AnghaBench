
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dev; } ;


 int ENODEV ;
 int IPC_CMD_SUBCMD ;
 int intel_pmc_ipc_check_status () ;
 int ipc_send_command (int) ;
 TYPE_1__ ipcdev ;
 int ipclock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int intel_pmc_ipc_simple_command(int cmd, int sub)
{
 int ret;

 mutex_lock(&ipclock);
 if (ipcdev.dev == ((void*)0)) {
  mutex_unlock(&ipclock);
  return -ENODEV;
 }
 ipc_send_command(sub << IPC_CMD_SUBCMD | cmd);
 ret = intel_pmc_ipc_check_status();
 mutex_unlock(&ipclock);

 return ret;
}
