
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;





 int USB_RECIP_MASK ;

 int pr_debug (char*) ;

__attribute__((used)) static void usbip_dump_request_type(__u8 rt)
{
 switch (rt & USB_RECIP_MASK) {
 case 131:
  pr_debug("DEVICE");
  break;
 case 129:
  pr_debug("INTERF");
  break;
 case 130:
  pr_debug("ENDPOI");
  break;
 case 128:
  pr_debug("OTHER ");
  break;
 default:
  pr_debug("------");
  break;
 }
}
