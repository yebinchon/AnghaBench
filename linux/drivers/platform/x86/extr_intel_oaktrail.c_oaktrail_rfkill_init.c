
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int OT_EC_BT_MASK ;
 int OT_EC_GPS_MASK ;
 int OT_EC_WIFI_MASK ;
 int OT_EC_WWAN_MASK ;
 int PTR_ERR (int *) ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_GPS ;
 int RFKILL_TYPE_WLAN ;
 int RFKILL_TYPE_WWAN ;
 int * bt_rfkill ;
 int * gps_rfkill ;
 int oaktrail_rfkill_cleanup () ;
 int * oaktrail_rfkill_new (char*,int ,int ) ;
 int * wifi_rfkill ;
 int * wwan_rfkill ;

__attribute__((used)) static int oaktrail_rfkill_init(void)
{
 int ret;

 wifi_rfkill = oaktrail_rfkill_new("oaktrail-wifi",
       RFKILL_TYPE_WLAN,
       OT_EC_WIFI_MASK);
 if (IS_ERR(wifi_rfkill)) {
  ret = PTR_ERR(wifi_rfkill);
  wifi_rfkill = ((void*)0);
  goto cleanup;
 }

 bt_rfkill = oaktrail_rfkill_new("oaktrail-bluetooth",
     RFKILL_TYPE_BLUETOOTH,
     OT_EC_BT_MASK);
 if (IS_ERR(bt_rfkill)) {
  ret = PTR_ERR(bt_rfkill);
  bt_rfkill = ((void*)0);
  goto cleanup;
 }

 gps_rfkill = oaktrail_rfkill_new("oaktrail-gps",
      RFKILL_TYPE_GPS,
      OT_EC_GPS_MASK);
 if (IS_ERR(gps_rfkill)) {
  ret = PTR_ERR(gps_rfkill);
  gps_rfkill = ((void*)0);
  goto cleanup;
 }

 wwan_rfkill = oaktrail_rfkill_new("oaktrail-wwan",
       RFKILL_TYPE_WWAN,
       OT_EC_WWAN_MASK);
 if (IS_ERR(wwan_rfkill)) {
  ret = PTR_ERR(wwan_rfkill);
  wwan_rfkill = ((void*)0);
  goto cleanup;
 }

 return 0;

cleanup:
 oaktrail_rfkill_cleanup();
 return ret;
}
