
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int numobufs; int* urbstatus; } ;


 int SU_URB_ALLOC ;
 int SU_URB_BUSY ;

__attribute__((used)) static int sisusb_outurb_available(struct sisusb_usb_data *sisusb)
{
 int i;

 for (i = 0; i < sisusb->numobufs; i++) {

  if ((sisusb->urbstatus[i] & (SU_URB_BUSY|SU_URB_ALLOC)) == 0)
   return i;

 }

 return -1;
}
