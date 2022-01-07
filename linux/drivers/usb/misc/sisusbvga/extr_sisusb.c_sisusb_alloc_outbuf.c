
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int * urbstatus; } ;


 int SU_URB_ALLOC ;
 int sisusb_outurb_available (struct sisusb_usb_data*) ;

__attribute__((used)) static int sisusb_alloc_outbuf(struct sisusb_usb_data *sisusb)
{
 int i;

 i = sisusb_outurb_available(sisusb);

 if (i >= 0)
  sisusb->urbstatus[i] |= SU_URB_ALLOC;

 return i;
}
