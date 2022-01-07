
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_alloc_unbound {scalar_t__ port; int remote_dom; int dom; } ;
typedef int domid_t ;


 int DOMID_SELF ;
 int EEXIST ;
 int EVTCHNOP_alloc_unbound ;
 int GNTTAB_RESERVED_XENSTORE ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_alloc_unbound*) ;
 int gnttab_grant_foreign_access_ref (int ,int ,int ,int ) ;
 int virt_to_gfn (int ) ;
 int xb_deinit_comms () ;
 scalar_t__ xen_store_evtchn ;
 int xen_store_interface ;
 scalar_t__ xenstored_ready ;
 int xs_resume () ;
 int xs_suspend () ;
 int xs_suspend_cancel () ;

__attribute__((used)) static long xenbus_alloc(domid_t domid)
{
 struct evtchn_alloc_unbound arg;
 int err = -EEXIST;

 xs_suspend();
 if (xenstored_ready)
  goto out_err;

 gnttab_grant_foreign_access_ref(GNTTAB_RESERVED_XENSTORE, domid,
   virt_to_gfn(xen_store_interface), 0 );

 arg.dom = DOMID_SELF;
 arg.remote_dom = domid;

 err = HYPERVISOR_event_channel_op(EVTCHNOP_alloc_unbound, &arg);
 if (err)
  goto out_err;

 if (xen_store_evtchn > 0)
  xb_deinit_comms();

 xen_store_evtchn = arg.port;

 xs_resume();

 return arg.port;

 out_err:
 xs_suspend_cancel();
 return err;
}
