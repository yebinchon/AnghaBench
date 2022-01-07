
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc_vif {struct wilc* wilc; } ;
struct wilc {TYPE_1__* firmware; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int size; int data; } ;


 int ENOBUFS ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int release_firmware (TYPE_1__*) ;
 int wilc_wlan_firmware_download (struct wilc*,int ,int ) ;

__attribute__((used)) static int wilc1000_firmware_download(struct net_device *dev)
{
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc = vif->wilc;
 int ret = 0;

 if (!wilc->firmware) {
  netdev_err(dev, "Firmware buffer is NULL\n");
  return -ENOBUFS;
 }

 ret = wilc_wlan_firmware_download(wilc, wilc->firmware->data,
       wilc->firmware->size);
 if (ret < 0)
  return ret;

 release_firmware(wilc->firmware);
 wilc->firmware = ((void*)0);

 netdev_dbg(dev, "Download Succeeded\n");

 return 0;
}
