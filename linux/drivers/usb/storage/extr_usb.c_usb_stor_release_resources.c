
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int current_urb; int extra; int (* extra_destructor ) (int ) ;scalar_t__ ctl_thread; int cmnd_ready; } ;


 int complete (int *) ;
 int kfree (int ) ;
 int kthread_stop (scalar_t__) ;
 int stub1 (int ) ;
 int usb_free_urb (int ) ;
 int usb_stor_dbg (struct us_data*,char*) ;

__attribute__((used)) static void usb_stor_release_resources(struct us_data *us)
{





 usb_stor_dbg(us, "-- sending exit command to thread\n");
 complete(&us->cmnd_ready);
 if (us->ctl_thread)
  kthread_stop(us->ctl_thread);


 if (us->extra_destructor) {
  usb_stor_dbg(us, "-- calling extra_destructor()\n");
  us->extra_destructor(us->extra);
 }


 kfree(us->extra);
 usb_free_urb(us->current_urb);
}
