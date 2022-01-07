
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ SsidLength; int Ssid; } ;
struct wlan_bssid_ex {TYPE_1__ Ssid; } ;


 int memcmp (int ,int ,scalar_t__) ;

inline int is_same_ess(struct wlan_bssid_ex *a, struct wlan_bssid_ex *b)
{


 return (a->Ssid.SsidLength == b->Ssid.SsidLength)
  && !memcmp(a->Ssid.Ssid, b->Ssid.Ssid, a->Ssid.SsidLength);
}
