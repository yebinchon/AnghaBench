
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ssid_length; int ssid; } ;
struct wlan_bssid_ex {TYPE_1__ ssid; } ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int is_same_ess(struct wlan_bssid_ex *a, struct wlan_bssid_ex *b)
{
 return (a->ssid.ssid_length == b->ssid.ssid_length) &&
        !memcmp(a->ssid.ssid, b->ssid.ssid, a->ssid.ssid_length);
}
