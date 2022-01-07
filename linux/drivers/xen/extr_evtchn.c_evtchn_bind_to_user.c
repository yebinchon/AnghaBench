
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_evtchn {int port; int enabled; struct per_user_data* user; } ;
struct per_user_data {int name; } ;
struct evtchn_close {int port; } ;


 int BUG () ;
 int ENOMEM ;
 int EVTCHNOP_close ;
 int GFP_KERNEL ;
 scalar_t__ HYPERVISOR_event_channel_op (int ,struct evtchn_close*) ;
 int add_evtchn (struct per_user_data*,struct user_evtchn*) ;
 int bind_evtchn_to_irqhandler (int,int ,int ,int ,struct user_evtchn*) ;
 int del_evtchn (struct per_user_data*,struct user_evtchn*) ;
 int evtchn_interrupt ;
 int evtchn_make_refcounted (int) ;
 int evtchn_resize_ring (struct per_user_data*) ;
 struct user_evtchn* kzalloc (int,int ) ;

__attribute__((used)) static int evtchn_bind_to_user(struct per_user_data *u, int port)
{
 struct user_evtchn *evtchn;
 struct evtchn_close close;
 int rc = 0;
 evtchn = kzalloc(sizeof(*evtchn), GFP_KERNEL);
 if (!evtchn)
  return -ENOMEM;

 evtchn->user = u;
 evtchn->port = port;
 evtchn->enabled = 1;

 rc = add_evtchn(u, evtchn);
 if (rc < 0)
  goto err;

 rc = evtchn_resize_ring(u);
 if (rc < 0)
  goto err;

 rc = bind_evtchn_to_irqhandler(port, evtchn_interrupt, 0,
           u->name, evtchn);
 if (rc < 0)
  goto err;

 rc = evtchn_make_refcounted(port);
 return rc;

err:

 close.port = port;
 if (HYPERVISOR_event_channel_op(EVTCHNOP_close, &close) != 0)
  BUG();
 del_evtchn(u, evtchn);
 return rc;
}
