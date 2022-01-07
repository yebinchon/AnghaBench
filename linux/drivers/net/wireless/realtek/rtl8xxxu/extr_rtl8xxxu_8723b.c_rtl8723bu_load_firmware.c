
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8xxxu_priv {scalar_t__ enable_bluetooth; } ;


 int rtl8xxxu_load_firmware (struct rtl8xxxu_priv*,char*) ;

__attribute__((used)) static int rtl8723bu_load_firmware(struct rtl8xxxu_priv *priv)
{
 char *fw_name;
 int ret;

 if (priv->enable_bluetooth)
  fw_name = "rtlwifi/rtl8723bu_bt.bin";
 else
  fw_name = "rtlwifi/rtl8723bu_nic.bin";

 ret = rtl8xxxu_load_firmware(priv, fw_name);
 return ret;
}
