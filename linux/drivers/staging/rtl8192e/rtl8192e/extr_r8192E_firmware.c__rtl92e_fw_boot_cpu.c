
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int CPU_GEN ;
 int CPU_GEN_BOOT_RDY ;
 int CPU_GEN_PUT_CODE_OK ;
 int CPU_GEN_PWR_STB_CPU ;
 int _rtl92e_wait_for_fw (struct net_device*,int ,int) ;
 int mdelay (int) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*) ;
 int rtl92e_readl (struct net_device*,int ) ;
 int rtl92e_writeb (struct net_device*,int ,int ) ;

__attribute__((used)) static bool _rtl92e_fw_boot_cpu(struct net_device *dev)
{
 u32 CPU_status = 0;

 if (!_rtl92e_wait_for_fw(dev, CPU_GEN_PUT_CODE_OK, 200)) {
  netdev_err(dev, "Firmware download failed.\n");
  return 0;
 }
 netdev_dbg(dev, "Download Firmware: Put code ok!\n");

 CPU_status = rtl92e_readl(dev, CPU_GEN);
 rtl92e_writeb(dev, CPU_GEN,
        (u8)((CPU_status|CPU_GEN_PWR_STB_CPU)&0xff));
 mdelay(1);

 if (!_rtl92e_wait_for_fw(dev, CPU_GEN_BOOT_RDY, 200)) {
  netdev_err(dev, "Firmware boot failed.\n");
  return 0;
 }

 netdev_dbg(dev, "Download Firmware: Boot ready!\n");

 return 1;
}
