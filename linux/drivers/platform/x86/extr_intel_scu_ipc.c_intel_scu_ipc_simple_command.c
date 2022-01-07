
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_scu_ipc_dev {int * dev; } ;


 int ENODEV ;
 int intel_scu_ipc_check_status (struct intel_scu_ipc_dev*) ;
 int ipc_command (struct intel_scu_ipc_dev*,int) ;
 struct intel_scu_ipc_dev ipcdev ;
 int ipclock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int intel_scu_ipc_simple_command(int cmd, int sub)
{
 struct intel_scu_ipc_dev *scu = &ipcdev;
 int err;

 mutex_lock(&ipclock);
 if (scu->dev == ((void*)0)) {
  mutex_unlock(&ipclock);
  return -ENODEV;
 }
 ipc_command(scu, sub << 12 | cmd);
 err = intel_scu_ipc_check_status(scu);
 mutex_unlock(&ipclock);
 return err;
}
