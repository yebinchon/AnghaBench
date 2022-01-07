
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_WLAN ;
 scalar_t__ WIRELESS_BT ;
 scalar_t__ WIRELESS_WLAN ;
 int bt_rfkill ;
 TYPE_1__* compal_device ;
 int compal_rfkill_ops ;
 int rfkill_alloc (char*,int *,int ,int *,void*) ;
 int rfkill_destroy (int ) ;
 int rfkill_register (int ) ;
 int rfkill_unregister (int ) ;
 int wifi_rfkill ;

__attribute__((used)) static int setup_rfkill(void)
{
 int ret;

 wifi_rfkill = rfkill_alloc("compal-wifi", &compal_device->dev,
    RFKILL_TYPE_WLAN, &compal_rfkill_ops,
    (void *) WIRELESS_WLAN);
 if (!wifi_rfkill)
  return -ENOMEM;

 ret = rfkill_register(wifi_rfkill);
 if (ret)
  goto err_wifi;

 bt_rfkill = rfkill_alloc("compal-bluetooth", &compal_device->dev,
    RFKILL_TYPE_BLUETOOTH, &compal_rfkill_ops,
    (void *) WIRELESS_BT);
 if (!bt_rfkill) {
  ret = -ENOMEM;
  goto err_allocate_bt;
 }
 ret = rfkill_register(bt_rfkill);
 if (ret)
  goto err_register_bt;

 return 0;

err_register_bt:
 rfkill_destroy(bt_rfkill);

err_allocate_bt:
 rfkill_unregister(wifi_rfkill);

err_wifi:
 rfkill_destroy(wifi_rfkill);

 return ret;
}
