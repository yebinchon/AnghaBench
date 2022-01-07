
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int sisusb_dev; int ready; int present; } ;



__attribute__((used)) static inline int
sisusb_sisusb_valid(struct sisusb_usb_data *sisusb)
{
 if (!sisusb->present || !sisusb->ready || !sisusb->sisusb_dev)
  return 0;

 return 1;
}
