
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_configuration {int dummy; } ;



__attribute__((used)) static inline bool can_support_rndis(struct usb_configuration *c)
{

 return 1;
}
