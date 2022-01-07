
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ndis_802_11_ssid {int SsidLength; int* Ssid; } ;



__attribute__((used)) static u8 validate_ssid(struct ndis_802_11_ssid *ssid)
{
 u8 i;

 if (ssid->SsidLength > 32)
  return 0;
 for (i = 0; i < ssid->SsidLength; i++) {

  if (!((ssid->Ssid[i] >= 0x20) && (ssid->Ssid[i] <= 0x7e)))
   return 0;
 }
 return 1;
}
