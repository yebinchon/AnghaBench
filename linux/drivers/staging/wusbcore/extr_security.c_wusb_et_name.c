
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;







const char *wusb_et_name(u8 x)
{
 switch (x) {
 case 129: return "unsecure";
 case 128: return "wired";
 case 131: return "CCM-1";
 case 130: return "RSA-1";
 default: return "unknown";
 }
}
