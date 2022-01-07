
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {int state; int sync_complete; struct device* dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int M3_BASELINE_VERSION ;
 void* M3_STATE_INITED ;




 int M3_VERSION_UNKNOWN ;
 int am33xx_txev_enable (struct wkup_m3_ipc*) ;
 int am33xx_txev_eoi (struct wkup_m3_ipc*) ;
 int complete (int *) ;
 int dev_info (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,...) ;
 int wkup_m3_fw_version_read (struct wkup_m3_ipc*) ;

__attribute__((used)) static irqreturn_t wkup_m3_txev_handler(int irq, void *ipc_data)
{
 struct wkup_m3_ipc *m3_ipc = ipc_data;
 struct device *dev = m3_ipc->dev;
 int ver = 0;

 am33xx_txev_eoi(m3_ipc);

 switch (m3_ipc->state) {
 case 129:
  ver = wkup_m3_fw_version_read(m3_ipc);

  if (ver == M3_VERSION_UNKNOWN ||
      ver < M3_BASELINE_VERSION) {
   dev_warn(dev, "CM3 Firmware Version %x not supported\n",
     ver);
  } else {
   dev_info(dev, "CM3 Firmware Version = 0x%x\n", ver);
  }

  m3_ipc->state = M3_STATE_INITED;
  complete(&m3_ipc->sync_complete);
  break;
 case 130:
  m3_ipc->state = M3_STATE_INITED;
  complete(&m3_ipc->sync_complete);
  break;
 case 131:
  complete(&m3_ipc->sync_complete);
  break;
 case 128:
  dev_warn(dev, "Unknown CM3 State\n");
 }

 am33xx_txev_enable(m3_ipc);

 return IRQ_HANDLED;
}
