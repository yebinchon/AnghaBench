
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; struct mdc800_data* context; } ;
struct mdc800_data {int written; int write_wait; int state; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int READY ;
 int dev_err (int *,char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void mdc800_usb_write_notify (struct urb *urb)
{
 struct mdc800_data* mdc800=urb->context;
 int status = urb->status;

 if (status != 0)
  dev_err(&mdc800->dev->dev,
   "writing command fails (status=%i)\n", status);
 else
  mdc800->state=READY;
 mdc800->written = 1;
 wake_up (&mdc800->write_wait);
}
