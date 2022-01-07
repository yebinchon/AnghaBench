
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_dev_state {TYPE_1__* dev; int ifclaimed; } ;
struct TYPE_5__ {int comm; } ;
struct TYPE_4__ {scalar_t__ state; int dev; } ;


 int EHOSTUNREACH ;
 int EINVAL ;
 scalar_t__ USB_STATE_CONFIGURED ;
 int claimintf (struct usb_dev_state*,unsigned int) ;
 TYPE_2__* current ;
 int dev_warn (int *,char*,int ,int ,unsigned int) ;
 int task_pid_nr (TYPE_2__*) ;
 scalar_t__ test_bit (unsigned int,int *) ;

__attribute__((used)) static int checkintf(struct usb_dev_state *ps, unsigned int ifnum)
{
 if (ps->dev->state != USB_STATE_CONFIGURED)
  return -EHOSTUNREACH;
 if (ifnum >= 8*sizeof(ps->ifclaimed))
  return -EINVAL;
 if (test_bit(ifnum, &ps->ifclaimed))
  return 0;

 dev_warn(&ps->dev->dev, "usbfs: process %d (%s) did not claim "
   "interface %u before use\n", task_pid_nr(current),
   current->comm, ifnum);
 return claimintf(ps, ifnum);
}
