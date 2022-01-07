
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int initialized; scalar_t__ dev_irq_num; TYPE_1__* hif_func; scalar_t__ gpio_irq; scalar_t__ close; int mac_status; } ;
struct net_device {int dummy; } ;
typedef int firmware_ver ;
struct TYPE_2__ {int (* disable_interrupt ) (struct wilc*) ;scalar_t__ (* enable_interrupt ) (struct wilc*) ;} ;


 int EIO ;
 int WID_FIRMWARE_VERSION ;
 int WILC_MAC_STATUS_INIT ;
 int deinit_irq (struct net_device*) ;
 scalar_t__ init_irq (struct net_device*) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 int netdev_err (struct net_device*,char*) ;
 scalar_t__ stub1 (struct wilc*) ;
 int stub2 (struct wilc*) ;
 int wilc1000_firmware_download (struct net_device*) ;
 int wilc_init_fw_config (struct net_device*,struct wilc_vif*) ;
 int wilc_start_firmware (struct net_device*) ;
 scalar_t__ wilc_wlan_cfg_get (struct wilc_vif*,int,int ,int,int ) ;
 int wilc_wlan_cfg_get_val (struct wilc*,int ,char*,int) ;
 int wilc_wlan_cleanup (struct net_device*) ;
 scalar_t__ wilc_wlan_get_firmware (struct net_device*) ;
 int wilc_wlan_init (struct net_device*) ;
 int wilc_wlan_stop (struct wilc*,struct wilc_vif*) ;
 int wlan_deinitialize_threads (struct net_device*) ;
 int wlan_initialize_threads (struct net_device*) ;

__attribute__((used)) static int wilc_wlan_initialize(struct net_device *dev, struct wilc_vif *vif)
{
 int ret = 0;
 struct wilc *wl = vif->wilc;

 if (!wl->initialized) {
  wl->mac_status = WILC_MAC_STATUS_INIT;
  wl->close = 0;

  ret = wilc_wlan_init(dev);
  if (ret < 0)
   return -EIO;

  ret = wlan_initialize_threads(dev);
  if (ret < 0) {
   ret = -EIO;
   goto fail_wilc_wlan;
  }

  if (wl->gpio_irq && init_irq(dev)) {
   ret = -EIO;
   goto fail_threads;
  }

  if (!wl->dev_irq_num &&
      wl->hif_func->enable_interrupt &&
      wl->hif_func->enable_interrupt(wl)) {
   ret = -EIO;
   goto fail_irq_init;
  }

  if (wilc_wlan_get_firmware(dev)) {
   ret = -EIO;
   goto fail_irq_enable;
  }

  ret = wilc1000_firmware_download(dev);
  if (ret < 0) {
   ret = -EIO;
   goto fail_irq_enable;
  }

  ret = wilc_start_firmware(dev);
  if (ret < 0) {
   ret = -EIO;
   goto fail_irq_enable;
  }

  if (wilc_wlan_cfg_get(vif, 1, WID_FIRMWARE_VERSION, 1, 0)) {
   int size;
   char firmware_ver[20];

   size = wilc_wlan_cfg_get_val(wl, WID_FIRMWARE_VERSION,
           firmware_ver,
           sizeof(firmware_ver));
   firmware_ver[size] = '\0';
   netdev_dbg(dev, "Firmware Ver = %s\n", firmware_ver);
  }
  ret = wilc_init_fw_config(dev, vif);

  if (ret < 0) {
   netdev_err(dev, "Failed to configure firmware\n");
   ret = -EIO;
   goto fail_fw_start;
  }
  wl->initialized = 1;
  return 0;

fail_fw_start:
  wilc_wlan_stop(wl, vif);

fail_irq_enable:
  if (!wl->dev_irq_num &&
      wl->hif_func->disable_interrupt)
   wl->hif_func->disable_interrupt(wl);
fail_irq_init:
  if (wl->dev_irq_num)
   deinit_irq(dev);
fail_threads:
  wlan_deinitialize_threads(dev);
fail_wilc_wlan:
  wilc_wlan_cleanup(dev);
  netdev_err(dev, "WLAN initialization FAILED\n");
 } else {
  netdev_dbg(dev, "wilc1000 already initialized\n");
 }
 return ret;
}
