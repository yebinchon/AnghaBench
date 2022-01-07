
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {int state; struct device* dev; } ;
struct device {int dummy; } ;


 int DS_IPC_DEFAULT ;
 int ENODEV ;
 int IPC_CMD_RESET ;
 int M3_STATE_MSG_FOR_RESET ;
 int dev_err (struct device*,char*) ;
 int wkup_m3_ctrl_ipc_write (struct wkup_m3_ipc*,int ,int) ;
 int wkup_m3_is_available (struct wkup_m3_ipc*) ;
 int wkup_m3_ping (struct wkup_m3_ipc*) ;

__attribute__((used)) static int wkup_m3_finish_low_power(struct wkup_m3_ipc *m3_ipc)
{
 struct device *dev = m3_ipc->dev;
 int ret = 0;

 if (!wkup_m3_is_available(m3_ipc))
  return -ENODEV;

 wkup_m3_ctrl_ipc_write(m3_ipc, IPC_CMD_RESET, 1);
 wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 2);

 m3_ipc->state = M3_STATE_MSG_FOR_RESET;

 ret = wkup_m3_ping(m3_ipc);
 if (ret) {
  dev_err(dev, "Unable to ping CM3\n");
  return ret;
 }

 return 0;
}
