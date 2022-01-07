
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pps_source_info {char* path; int mode; int * dev; int owner; int name; } ;
struct pps_client_pp {int index; int pardev; int cw; int pps; } ;
struct parport {int name; TYPE_1__* ops; } ;
struct pardev_cb {int flags; int irq_func; struct pps_client_pp* private; } ;
typedef int pps_client_cb ;
struct TYPE_2__ {int (* enable_irq ) (struct parport*) ;} ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int KBUILD_MODNAME ;
 int PARPORT_FLAG_EXCL ;
 int PPS_CANWAIT ;
 int PPS_CAPTUREBOTH ;
 int PPS_ECHOASSERT ;
 int PPS_ECHOCLEAR ;
 int PPS_OFFSETASSERT ;
 int PPS_OFFSETCLEAR ;
 int PPS_TSFMT_TSPEC ;
 int THIS_MODULE ;
 int clear_wait ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct pps_client_pp*) ;
 struct pps_client_pp* kzalloc (int,int ) ;
 int memset (struct pardev_cb*,int ,int) ;
 scalar_t__ parport_claim_or_block (int ) ;
 int parport_irq ;
 int parport_register_dev_model (struct parport*,int ,struct pardev_cb*,int) ;
 int parport_release (int ) ;
 int parport_unregister_device (int ) ;
 int pps_client_index ;
 int pps_register_source (struct pps_source_info*,int) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ) ;
 int stub1 (struct parport*) ;

__attribute__((used)) static void parport_attach(struct parport *port)
{
 struct pardev_cb pps_client_cb;
 int index;
 struct pps_client_pp *device;
 struct pps_source_info info = {
  .name = KBUILD_MODNAME,
  .path = "",
  .mode = PPS_CAPTUREBOTH | PPS_OFFSETASSERT | PPS_OFFSETCLEAR | PPS_ECHOASSERT | PPS_ECHOCLEAR | PPS_CANWAIT | PPS_TSFMT_TSPEC,



  .owner = THIS_MODULE,
  .dev = ((void*)0)
 };

 device = kzalloc(sizeof(struct pps_client_pp), GFP_KERNEL);
 if (!device) {
  pr_err("memory allocation failed, not attaching\n");
  return;
 }

 index = ida_simple_get(&pps_client_index, 0, 0, GFP_KERNEL);
 memset(&pps_client_cb, 0, sizeof(pps_client_cb));
 pps_client_cb.private = device;
 pps_client_cb.irq_func = parport_irq;
 pps_client_cb.flags = PARPORT_FLAG_EXCL;
 device->pardev = parport_register_dev_model(port,
          KBUILD_MODNAME,
          &pps_client_cb,
          index);
 if (!device->pardev) {
  pr_err("couldn't register with %s\n", port->name);
  goto err_free;
 }

 if (parport_claim_or_block(device->pardev) < 0) {
  pr_err("couldn't claim %s\n", port->name);
  goto err_unregister_dev;
 }

 device->pps = pps_register_source(&info,
   PPS_CAPTUREBOTH | PPS_OFFSETASSERT | PPS_OFFSETCLEAR);
 if (IS_ERR(device->pps)) {
  pr_err("couldn't register PPS source\n");
  goto err_release_dev;
 }

 device->cw = clear_wait;

 port->ops->enable_irq(port);
 device->index = index;

 pr_info("attached to %s\n", port->name);

 return;

err_release_dev:
 parport_release(device->pardev);
err_unregister_dev:
 parport_unregister_device(device->pardev);
err_free:
 ida_simple_remove(&pps_client_index, index);
 kfree(device);
}
