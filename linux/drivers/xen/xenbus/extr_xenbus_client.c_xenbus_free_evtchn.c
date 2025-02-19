
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dummy; } ;
struct evtchn_close {int port; } ;


 int EVTCHNOP_close ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_close*) ;
 int xenbus_dev_error (struct xenbus_device*,int,char*,int) ;

int xenbus_free_evtchn(struct xenbus_device *dev, int port)
{
 struct evtchn_close close;
 int err;

 close.port = port;

 err = HYPERVISOR_event_channel_op(EVTCHNOP_close, &close);
 if (err)
  xenbus_dev_error(dev, err, "freeing event channel %d", port);

 return err;
}
