
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int wwan; int bluetooth; int wlan; int is_pega_lucid; } ;


 int ENODEV ;
 int PEGA_BLUETOOTH ;
 int PEGA_WLAN ;
 int PEGA_WWAN ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_WLAN ;
 int RFKILL_TYPE_WWAN ;
 int asus_rfkill_exit (struct asus_laptop*) ;
 int pega_rfkill_setup (struct asus_laptop*,int *,char*,int ,int ) ;

__attribute__((used)) static int pega_rfkill_init(struct asus_laptop *asus)
{
 int ret = 0;

 if(!asus->is_pega_lucid)
  return -ENODEV;

 ret = pega_rfkill_setup(asus, &asus->wlan, "pega-wlan",
    PEGA_WLAN, RFKILL_TYPE_WLAN);
 if(ret)
  goto exit;

 ret = pega_rfkill_setup(asus, &asus->bluetooth, "pega-bt",
    PEGA_BLUETOOTH, RFKILL_TYPE_BLUETOOTH);
 if(ret)
  goto exit;

 ret = pega_rfkill_setup(asus, &asus->wwan, "pega-wwan",
    PEGA_WWAN, RFKILL_TYPE_WWAN);

exit:
 if (ret)
  asus_rfkill_exit(asus);

 return ret;
}
