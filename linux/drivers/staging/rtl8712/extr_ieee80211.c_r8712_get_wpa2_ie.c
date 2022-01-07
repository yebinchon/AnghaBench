
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int _WPA2_IE_ID_ ;
 unsigned char* r8712_get_ie (unsigned char*,int ,int *,int) ;

unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len,
     int limit)
{
 return r8712_get_ie(pie, _WPA2_IE_ID_, rsn_ie_len, limit);
}
