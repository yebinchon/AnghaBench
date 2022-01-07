
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int nvs_len; int* nvs; } ;


 int EINVAL ;
 int ENODATA ;
 size_t NVS_OFF_MAC_ADDR_HI ;
 size_t NVS_OFF_MAC_ADDR_LO ;
 size_t NVS_OFF_MAC_LEN ;

__attribute__((used)) static int wl1251_check_nvs_mac(struct wl1251 *wl)
{
 if (wl->nvs_len < 0x24)
  return -ENODATA;


 if (wl->nvs[NVS_OFF_MAC_LEN] != 2 ||
     wl->nvs[NVS_OFF_MAC_ADDR_LO] != 0x6d ||
     wl->nvs[NVS_OFF_MAC_ADDR_HI] != 0x54)
  return -EINVAL;

 return 0;
}
