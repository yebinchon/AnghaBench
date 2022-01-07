
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int lock; int * havethisconsole; } ;


 scalar_t__ in_atomic () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sisusb_usb_data* sisusb_get_sisusb (unsigned short) ;
 int sisusb_sisusb_valid (struct sisusb_usb_data*) ;

__attribute__((used)) static struct sisusb_usb_data *
sisusb_get_sisusb_lock_and_check(unsigned short console)
{
 struct sisusb_usb_data *sisusb;






 if (in_atomic())
  return ((void*)0);

 sisusb = sisusb_get_sisusb(console);
 if (!sisusb)
  return ((void*)0);

 mutex_lock(&sisusb->lock);

 if (!sisusb_sisusb_valid(sisusb) ||
     !sisusb->havethisconsole[console]) {
  mutex_unlock(&sisusb->lock);
  return ((void*)0);
 }

 return sisusb;
}
