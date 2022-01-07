
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl8xxxu_priv {int dummy; } ;
struct TYPE_2__ {int data; int cmd; } ;
struct h2c_cmd {TYPE_1__ bt_wlan_calibration; } ;


 int H2C_8723B_BT_WLAN_CALIBRATION ;
 int memset (struct h2c_cmd*,int ,int) ;
 int rtl8xxxu_gen2_h2c_cmd (struct rtl8xxxu_priv*,struct h2c_cmd*,int) ;

void rtl8xxxu_gen2_prepare_calibrate(struct rtl8xxxu_priv *priv, u8 start)
{
 struct h2c_cmd h2c;

 memset(&h2c, 0, sizeof(struct h2c_cmd));
 h2c.bt_wlan_calibration.cmd = H2C_8723B_BT_WLAN_CALIBRATION;
 h2c.bt_wlan_calibration.data = start;

 rtl8xxxu_gen2_h2c_cmd(priv, &h2c, sizeof(h2c.bt_wlan_calibration));
}
