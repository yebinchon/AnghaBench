
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int current_sg; int dflags; int current_urb; } ;


 int US_FLIDX_SG_ACTIVE ;
 int US_FLIDX_URB_ACTIVE ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int usb_sg_cancel (int *) ;
 int usb_stor_dbg (struct us_data*,char*) ;
 int usb_unlink_urb (int ) ;

void usb_stor_stop_transport(struct us_data *us)
{






 if (test_and_clear_bit(US_FLIDX_URB_ACTIVE, &us->dflags)) {
  usb_stor_dbg(us, "-- cancelling URB\n");
  usb_unlink_urb(us->current_urb);
 }


 if (test_and_clear_bit(US_FLIDX_SG_ACTIVE, &us->dflags)) {
  usb_stor_dbg(us, "-- cancelling sg request\n");
  usb_sg_cancel(&us->current_sg);
 }
}
