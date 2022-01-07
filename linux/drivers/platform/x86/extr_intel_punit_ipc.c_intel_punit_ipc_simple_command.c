
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int lock; int cmd_complete; } ;
typedef int IPC_TYPE ;
typedef TYPE_1__ IPC_DEV ;


 int CMD_PARA1_SHIFT ;
 int CMD_PARA2_SHIFT ;
 int CMD_RUN ;
 int IPC_PUNIT_CMD_TYPE_MASK ;
 int IPC_TYPE_OFFSET ;
 int intel_punit_ipc_check_status (TYPE_1__*,int) ;
 int ipc_write_cmd (TYPE_1__*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* punit_ipcdev ;
 int reinit_completion (int *) ;

int intel_punit_ipc_simple_command(int cmd, int para1, int para2)
{
 IPC_DEV *ipcdev = punit_ipcdev;
 IPC_TYPE type;
 u32 val;
 int ret;

 mutex_lock(&ipcdev->lock);

 reinit_completion(&ipcdev->cmd_complete);
 type = (cmd & IPC_PUNIT_CMD_TYPE_MASK) >> IPC_TYPE_OFFSET;

 val = cmd & ~IPC_PUNIT_CMD_TYPE_MASK;
 val |= CMD_RUN | para2 << CMD_PARA2_SHIFT | para1 << CMD_PARA1_SHIFT;
 ipc_write_cmd(ipcdev, type, val);
 ret = intel_punit_ipc_check_status(ipcdev, type);

 mutex_unlock(&ipcdev->lock);

 return ret;
}
