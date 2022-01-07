
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {struct hfa384x* priv; } ;
struct hfa384x {int dummy; } ;


 int HFA384x_RID_CNFMAXDATALEN ;
 int WLAN_DATA_MAXLEN ;
 int hfa384x_drvr_setconfig16 (struct hfa384x*,int ,int ) ;

__attribute__((used)) static int prism2sta_globalsetup(struct wlandevice *wlandev)
{
 struct hfa384x *hw = wlandev->priv;


 return hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFMAXDATALEN,
     WLAN_DATA_MAXLEN);
}
