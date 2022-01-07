
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct parport {int name; } ;
struct pardev_cb {int flags; TYPE_1__* private; } ;
typedef int pps_cb ;
struct TYPE_7__ {int function; } ;
struct TYPE_6__ {int pardev; TYPE_2__ timer; } ;


 int CLOCK_REALTIME ;
 int HRTIMER_MODE_ABS ;
 int KBUILD_MODNAME ;
 int PARPORT_FLAG_EXCL ;
 int attached ;
 int calibrate_port (TYPE_1__*) ;
 TYPE_1__ device ;
 int hrtimer_event ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 int hrtimer_start (TYPE_2__*,int ,int ) ;
 int memset (struct pardev_cb*,int ,int) ;
 int next_intr_time (TYPE_1__*) ;
 scalar_t__ parport_claim_or_block (int ) ;
 int parport_register_dev_model (struct parport*,int ,struct pardev_cb*,int ) ;
 int parport_unregister_device (int ) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void parport_attach(struct parport *port)
{
 struct pardev_cb pps_cb;

 if (attached) {

  return;
 }

 memset(&pps_cb, 0, sizeof(pps_cb));
 pps_cb.private = &device;
 pps_cb.flags = PARPORT_FLAG_EXCL;
 device.pardev = parport_register_dev_model(port, KBUILD_MODNAME,
         &pps_cb, 0);
 if (!device.pardev) {
  pr_err("couldn't register with %s\n", port->name);
  return;
 }

 if (parport_claim_or_block(device.pardev) < 0) {
  pr_err("couldn't claim %s\n", port->name);
  goto err_unregister_dev;
 }

 pr_info("attached to %s\n", port->name);
 attached = 1;

 calibrate_port(&device);

 hrtimer_init(&device.timer, CLOCK_REALTIME, HRTIMER_MODE_ABS);
 device.timer.function = hrtimer_event;
 hrtimer_start(&device.timer, next_intr_time(&device), HRTIMER_MODE_ABS);

 return;

err_unregister_dev:
 parport_unregister_device(device.pardev);
}
