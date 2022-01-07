
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int dummy; } ;


 int ftdi_elan_check_controller (struct usb_ftdi*,int) ;
 int ftdi_elan_close_controller (struct usb_ftdi*,int) ;
 int ftdi_elan_setup_controller (struct usb_ftdi*,int) ;

__attribute__((used)) static int ftdi_elan_found_controller(struct usb_ftdi *ftdi, int fn, int quirk)
{
 int result;
 int UxxxStatus;
 UxxxStatus = ftdi_elan_setup_controller(ftdi, fn);
 if (UxxxStatus)
  return UxxxStatus;
 result = ftdi_elan_check_controller(ftdi, quirk);
 UxxxStatus = ftdi_elan_close_controller(ftdi, fn);
 if (UxxxStatus)
  return UxxxStatus;
 return result;
}
