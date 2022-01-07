
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int dummy; } ;


 struct sisusb_usb_data** mysisusbs ;

__attribute__((used)) static inline struct sisusb_usb_data *
sisusb_get_sisusb(unsigned short console)
{
 return mysisusbs[console];
}
