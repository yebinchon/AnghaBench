
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlan_network {int dummy; } ;
struct __queue {int dummy; } ;


 struct wlan_network* _rtw_find_network (struct __queue*,int *) ;

struct wlan_network *rtw_find_network(struct __queue *scanned_queue, u8 *addr)
{
 struct wlan_network *pnetwork = _rtw_find_network(scanned_queue, addr);

 return pnetwork;
}
