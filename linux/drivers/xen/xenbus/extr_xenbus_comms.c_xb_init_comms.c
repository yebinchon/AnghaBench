
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenstore_domain_interface {scalar_t__ req_prod; scalar_t__ req_cons; scalar_t__ rsp_prod; scalar_t__ rsp_cons; } ;


 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int bind_evtchn_to_irqhandler (int ,int ,int ,char*,int *) ;
 scalar_t__ kthread_run (int ,int *,char*) ;
 int pr_err (char*,int,...) ;
 int pr_warn (char*,scalar_t__,scalar_t__) ;
 int rebind_evtchn_irq (int ,int) ;
 int reset_devices ;
 int wake_waiting ;
 int xb_waitq ;
 int xen_store_evtchn ;
 struct xenstore_domain_interface* xen_store_interface ;
 int xenbus_irq ;
 scalar_t__ xenbus_task ;
 int xenbus_thread ;

int xb_init_comms(void)
{
 struct xenstore_domain_interface *intf = xen_store_interface;

 if (intf->req_prod != intf->req_cons)
  pr_err("request ring is not quiescent (%08x:%08x)!\n",
         intf->req_cons, intf->req_prod);

 if (intf->rsp_prod != intf->rsp_cons) {
  pr_warn("response ring is not quiescent (%08x:%08x): fixing up\n",
   intf->rsp_cons, intf->rsp_prod);

  if (!reset_devices)
   intf->rsp_cons = intf->rsp_prod;
 }

 if (xenbus_irq) {

  rebind_evtchn_irq(xen_store_evtchn, xenbus_irq);
 } else {
  int err;

  err = bind_evtchn_to_irqhandler(xen_store_evtchn, wake_waiting,
      0, "xenbus", &xb_waitq);
  if (err < 0) {
   pr_err("request irq failed %i\n", err);
   return err;
  }

  xenbus_irq = err;

  if (!xenbus_task) {
   xenbus_task = kthread_run(xenbus_thread, ((void*)0),
        "xenbus");
   if (IS_ERR(xenbus_task))
    return PTR_ERR(xenbus_task);
  }
 }

 return 0;
}
