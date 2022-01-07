
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt_firmware {int status; } ;
struct r8192_priv {struct rt_firmware* pFirmware; } ;
struct net_device {int dummy; } ;


 int COMP_FIRMWARE ;
 int CPU_GEN_FIRM_RDY ;



 int FW_STATUS_1_MOVE_BOOT_CODE ;
 int FW_STATUS_2_MOVE_MAIN_CODE ;
 int FW_STATUS_3_TURNON_CPU ;
 int FW_STATUS_4_MOVE_DATA_CODE ;
 int FW_STATUS_5_READY ;
 int RT_TRACE (int ,char*,int) ;
 int _rtl92e_fw_boot_cpu (struct net_device*) ;
 int _rtl92e_wait_for_fw (struct net_device*,int ,int) ;
 int mdelay (int) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static bool _rtl92e_fw_check_ready(struct net_device *dev,
       u8 load_fw_status)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rt_firmware *pfirmware = priv->pFirmware;
 bool rt_status = 1;

 switch (load_fw_status) {
 case 130:
  pfirmware->status = FW_STATUS_1_MOVE_BOOT_CODE;
  break;

 case 129:
  pfirmware->status = FW_STATUS_2_MOVE_MAIN_CODE;

  rt_status = _rtl92e_fw_boot_cpu(dev);
  if (rt_status)
   pfirmware->status = FW_STATUS_3_TURNON_CPU;
  else
   netdev_dbg(dev, "_rtl92e_fw_boot_cpu fail!\n");

  break;

 case 128:
  pfirmware->status = FW_STATUS_4_MOVE_DATA_CODE;
  mdelay(1);

  rt_status = _rtl92e_wait_for_fw(dev, CPU_GEN_FIRM_RDY, 20);
  if (rt_status)
   pfirmware->status = FW_STATUS_5_READY;
  else
   RT_TRACE(COMP_FIRMWARE,
     "_rtl92e_is_fw_ready fail(%d)!\n",
     rt_status);
  break;
 default:
  rt_status = 0;
  netdev_dbg(dev, "Unknown firmware status");
  break;
 }

 return rt_status;
}
