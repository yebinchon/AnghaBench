
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ndis_802_11_ssid {int dummy; } ;
struct adapter {int dummy; } ;


 int _issue_probereq (struct adapter*,struct ndis_802_11_ssid*,int *,int ,int,int) ;

inline void issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da)
{
 _issue_probereq(padapter, pssid, da, 0, 1, 0);
}
