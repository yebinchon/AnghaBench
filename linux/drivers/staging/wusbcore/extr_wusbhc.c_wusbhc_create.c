
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dnts_num_slots; int dnts_interval; int mutex; int retry_count; scalar_t__ phy_rate; int trust_timeout; } ;


 scalar_t__ UWB_PHY_RATE_INVALID ;
 int WUSB_RETRY_COUNT_INFINITE ;
 int WUSB_TRUST_TIMEOUT_MS ;
 int mutex_init (int *) ;
 int wusbhc_devconnect_create (struct wusbhc*) ;
 int wusbhc_devconnect_destroy (struct wusbhc*) ;
 int wusbhc_mmcie_create (struct wusbhc*) ;
 int wusbhc_mmcie_destroy (struct wusbhc*) ;
 int wusbhc_rh_create (struct wusbhc*) ;
 int wusbhc_rh_destroy (struct wusbhc*) ;
 int wusbhc_sec_create (struct wusbhc*) ;

int wusbhc_create(struct wusbhc *wusbhc)
{
 int result = 0;


 wusbhc->trust_timeout = WUSB_TRUST_TIMEOUT_MS;
 wusbhc->phy_rate = UWB_PHY_RATE_INVALID - 1;
 wusbhc->dnts_num_slots = 4;
 wusbhc->dnts_interval = 2;
 wusbhc->retry_count = WUSB_RETRY_COUNT_INFINITE;

 mutex_init(&wusbhc->mutex);
 result = wusbhc_mmcie_create(wusbhc);
 if (result < 0)
  goto error_mmcie_create;
 result = wusbhc_devconnect_create(wusbhc);
 if (result < 0)
  goto error_devconnect_create;
 result = wusbhc_rh_create(wusbhc);
 if (result < 0)
  goto error_rh_create;
 result = wusbhc_sec_create(wusbhc);
 if (result < 0)
  goto error_sec_create;
 return 0;

error_sec_create:
 wusbhc_rh_destroy(wusbhc);
error_rh_create:
 wusbhc_devconnect_destroy(wusbhc);
error_devconnect_create:
 wusbhc_mmcie_destroy(wusbhc);
error_mmcie_create:
 return result;
}
