
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct asus_rfkill {scalar_t__ dev_id; TYPE_2__* asus; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {scalar_t__ wlan_ctrl_by_user; } ;


 scalar_t__ ASUS_WMI_DEVID_WLAN ;
 scalar_t__ ASUS_WMI_DEVID_WLAN_LED ;
 int asus_wmi_set_devstate (scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static int asus_rfkill_set(void *data, bool blocked)
{
 struct asus_rfkill *priv = data;
 u32 ctrl_param = !blocked;
 u32 dev_id = priv->dev_id;
 if ((dev_id == ASUS_WMI_DEVID_WLAN) &&
      priv->asus->driver->wlan_ctrl_by_user)
  dev_id = ASUS_WMI_DEVID_WLAN_LED;

 return asus_wmi_set_devstate(dev_id, ctrl_param, ((void*)0));
}
