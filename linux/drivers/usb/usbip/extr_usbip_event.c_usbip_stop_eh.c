
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {unsigned long event; int eh_waitq; } ;


 unsigned long USBIP_EH_BYE ;
 int usbip_dbg_eh (char*,...) ;
 int wait_event_interruptible (int ,int) ;

void usbip_stop_eh(struct usbip_device *ud)
{
 unsigned long pending = ud->event & ~USBIP_EH_BYE;

 if (!(ud->event & USBIP_EH_BYE))
  usbip_dbg_eh("usbip_eh stopping but not removed\n");

 if (pending)
  usbip_dbg_eh("usbip_eh waiting completion %lx\n", pending);

 wait_event_interruptible(ud->eh_waitq, !(ud->event & ~USBIP_EH_BYE));
 usbip_dbg_eh("usbip_eh has stopped\n");
}
