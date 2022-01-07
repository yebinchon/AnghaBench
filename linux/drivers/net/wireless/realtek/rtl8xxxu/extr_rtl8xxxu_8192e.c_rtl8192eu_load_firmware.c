
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8xxxu_priv {int dummy; } ;


 int rtl8xxxu_load_firmware (struct rtl8xxxu_priv*,char*) ;

__attribute__((used)) static int rtl8192eu_load_firmware(struct rtl8xxxu_priv *priv)
{
 char *fw_name;
 int ret;

 fw_name = "rtlwifi/rtl8192eu_nic.bin";

 ret = rtl8xxxu_load_firmware(priv, fw_name);

 return ret;
}
