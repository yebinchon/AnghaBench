
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int (* unusable ) (struct usbip_device*) ;int (* reset ) (struct usbip_device*) ;int (* shutdown ) (struct usbip_device*) ;} ;
struct usbip_device {int event; int eh_waitq; TYPE_1__ eh_ops; } ;


 int USBIP_EH_RESET ;
 int USBIP_EH_SHUTDOWN ;
 int USBIP_EH_UNUSABLE ;
 int * current ;
 struct usbip_device* get_event () ;
 int stub1 (struct usbip_device*) ;
 int stub2 (struct usbip_device*) ;
 int stub3 (struct usbip_device*) ;
 int unset_event (struct usbip_device*,int) ;
 int usbip_dbg_eh (char*,int) ;
 int wake_up (int *) ;
 int * worker_context ;

__attribute__((used)) static void event_handler(struct work_struct *work)
{
 struct usbip_device *ud;

 if (worker_context == ((void*)0)) {
  worker_context = current;
 }

 while ((ud = get_event()) != ((void*)0)) {
  usbip_dbg_eh("pending event %lx\n", ud->event);





  if (ud->event & USBIP_EH_SHUTDOWN) {
   ud->eh_ops.shutdown(ud);
   unset_event(ud, USBIP_EH_SHUTDOWN);
  }


  if (ud->event & USBIP_EH_RESET) {
   ud->eh_ops.reset(ud);
   unset_event(ud, USBIP_EH_RESET);
  }


  if (ud->event & USBIP_EH_UNUSABLE) {
   ud->eh_ops.unusable(ud);
   unset_event(ud, USBIP_EH_UNUSABLE);
  }

  wake_up(&ud->eh_waitq);
 }
}
