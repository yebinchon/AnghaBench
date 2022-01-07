
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int * mac_addr; int * nvs; } ;


 int ETH_ALEN ;
 int NVS_OFF_MAC_DATA ;
 int wl1251_check_nvs_mac (struct wl1251*) ;

__attribute__((used)) static int wl1251_write_nvs_mac(struct wl1251 *wl)
{
 int i, ret;

 ret = wl1251_check_nvs_mac(wl);
 if (ret)
  return ret;


 for (i = 0; i < ETH_ALEN; i++)
  wl->nvs[NVS_OFF_MAC_DATA + i] = wl->mac_addr[ETH_ALEN - i - 1];

 return 0;
}
