
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct uwb_rc {TYPE_2__ uwb_dev; scalar_t__ ready; } ;
struct TYPE_3__ {int rceb; } ;
struct uwb_event {int type; TYPE_1__ notif; struct uwb_rc* rc; } ;




 int __uwb_rc_put (struct uwb_rc*) ;
 int dev_err (int *,char*,int) ;
 int kfree (int ) ;
 int uwbd_event_handle_message (struct uwb_event*) ;
 int uwbd_event_handle_urc (struct uwb_event*) ;

__attribute__((used)) static void uwbd_event_handle(struct uwb_event *evt)
{
 struct uwb_rc *rc;
 int should_keep;

 rc = evt->rc;

 if (rc->ready) {
  switch (evt->type) {
  case 128:
   should_keep = uwbd_event_handle_urc(evt);
   if (should_keep <= 0)
    kfree(evt->notif.rceb);
   break;
  case 129:
   uwbd_event_handle_message(evt);
   break;
  default:
   dev_err(&rc->uwb_dev.dev, "UWBD: invalid event type %d\n", evt->type);
   break;
  }
 }

 __uwb_rc_put(rc);
}
