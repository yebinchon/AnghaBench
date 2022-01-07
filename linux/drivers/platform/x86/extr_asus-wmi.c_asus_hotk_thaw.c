
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ rfkill; } ;
struct asus_wmi {TYPE_1__ wlan; } ;


 int ASUS_WMI_DEVID_WLAN ;
 int asus_wmi_get_devstate_simple (struct asus_wmi*,int ) ;
 int asus_wmi_set_devstate (int ,int,int *) ;
 struct asus_wmi* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int asus_hotk_thaw(struct device *device)
{
 struct asus_wmi *asus = dev_get_drvdata(device);

 if (asus->wlan.rfkill) {
  bool wlan;






  wlan = asus_wmi_get_devstate_simple(asus, ASUS_WMI_DEVID_WLAN);
  asus_wmi_set_devstate(ASUS_WMI_DEVID_WLAN, wlan, ((void*)0));
 }

 return 0;
}
