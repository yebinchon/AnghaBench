
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1251 {int mac_addr; int * nvs; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int NVS_OFF_MAC_DATA ;
 scalar_t__ ether_addr_equal_unaligned (int *,char*) ;
 int memcpy (int ,int *,int) ;
 int wl1251_check_nvs_mac (struct wl1251*) ;

__attribute__((used)) static int wl1251_read_nvs_mac(struct wl1251 *wl)
{
 u8 mac[ETH_ALEN];
 int i, ret;

 ret = wl1251_check_nvs_mac(wl);
 if (ret)
  return ret;


 for (i = 0; i < ETH_ALEN; i++)
  mac[i] = wl->nvs[NVS_OFF_MAC_DATA + ETH_ALEN - i - 1];


 if (ether_addr_equal_unaligned(mac, "\x00\x00\x20\x07\x03\x09"))
  return -EINVAL;

 memcpy(wl->mac_addr, mac, ETH_ALEN);
 return 0;
}
