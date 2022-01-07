
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {int resume_addr; int mem_type; int state; struct device* dev; } ;
struct device {int dummy; } ;


 int DS_IPC_DEFAULT ;
 int ENODEV ;
 int IPC_CMD_DS0 ;
 int IPC_CMD_IDLE ;
 int IPC_CMD_STANDBY ;
 int M3_STATE_MSG_FOR_LP ;



 int dev_err (struct device*,char*) ;
 int wkup_m3_ctrl_ipc_write (struct wkup_m3_ipc*,int,int) ;
 int wkup_m3_is_available (struct wkup_m3_ipc*) ;
 int wkup_m3_ping (struct wkup_m3_ipc*) ;
 int wkup_m3_ping_noirq (struct wkup_m3_ipc*) ;

__attribute__((used)) static int wkup_m3_prepare_low_power(struct wkup_m3_ipc *m3_ipc, int state)
{
 struct device *dev = m3_ipc->dev;
 int m3_power_state;
 int ret = 0;

 if (!wkup_m3_is_available(m3_ipc))
  return -ENODEV;

 switch (state) {
 case 130:
  m3_power_state = IPC_CMD_DS0;
  break;
 case 128:
  m3_power_state = IPC_CMD_STANDBY;
  break;
 case 129:
  m3_power_state = IPC_CMD_IDLE;
  break;
 default:
  return 1;
 }


 wkup_m3_ctrl_ipc_write(m3_ipc, m3_ipc->resume_addr, 0);
 wkup_m3_ctrl_ipc_write(m3_ipc, m3_power_state, 1);
 wkup_m3_ctrl_ipc_write(m3_ipc, m3_ipc->mem_type, 4);

 wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 2);
 wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 3);
 wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 5);
 wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 6);
 wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 7);

 m3_ipc->state = M3_STATE_MSG_FOR_LP;

 if (state == 129)
  ret = wkup_m3_ping_noirq(m3_ipc);
 else
  ret = wkup_m3_ping(m3_ipc);

 if (ret) {
  dev_err(dev, "Unable to ping CM3\n");
  return ret;
 }

 return 0;
}
