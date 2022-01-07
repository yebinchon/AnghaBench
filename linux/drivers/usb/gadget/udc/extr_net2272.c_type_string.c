
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int bmAttributes ;


 int USB_ENDPOINT_XFERTYPE_MASK ;




__attribute__((used)) static char *type_string(u8 bmAttributes)
{
 switch ((bmAttributes) & USB_ENDPOINT_XFERTYPE_MASK) {
 case 130: return "bulk";
 case 128: return "iso";
 case 129: return "intr";
 default: return "control";
 }
}
