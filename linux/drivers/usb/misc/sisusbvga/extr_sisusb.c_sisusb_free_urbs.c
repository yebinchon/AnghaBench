
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int * sisurbin; int ** sisurbout; } ;


 int NUMOBUFS ;
 int usb_free_urb (int *) ;

__attribute__((used)) static void sisusb_free_urbs(struct sisusb_usb_data *sisusb)
{
 int i;

 for (i = 0; i < NUMOBUFS; i++) {
  usb_free_urb(sisusb->sisurbout[i]);
  sisusb->sisurbout[i] = ((void*)0);
 }
 usb_free_urb(sisusb->sisurbin);
 sisusb->sisurbin = ((void*)0);
}
