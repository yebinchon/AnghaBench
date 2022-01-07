
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_ticks; int timer; scalar_t__ queue; int stop; } ;


 int CPU5WDT_EXTENT ;
 scalar_t__ CPU5WDT_STATUS_REG ;
 int EBUSY ;
 int PFX ;
 TYPE_1__ cpu5wdt_device ;
 int cpu5wdt_misc ;
 int cpu5wdt_trigger ;
 unsigned int inb (scalar_t__) ;
 int init_completion (int *) ;
 int misc_register (int *) ;
 scalar_t__ port ;
 int pr_debug (char*,scalar_t__,scalar_t__) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int release_region (scalar_t__,int ) ;
 int request_region (scalar_t__,int ,int ) ;
 int ticks ;
 int timer_setup (int *,int ,int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static int cpu5wdt_init(void)
{
 unsigned int val;
 int err;

 if (verbose)
  pr_debug("port=0x%x, verbose=%i\n", port, verbose);

 init_completion(&cpu5wdt_device.stop);
 cpu5wdt_device.queue = 0;
 timer_setup(&cpu5wdt_device.timer, cpu5wdt_trigger, 0);
 cpu5wdt_device.default_ticks = ticks;

 if (!request_region(port, CPU5WDT_EXTENT, PFX)) {
  pr_err("request_region failed\n");
  err = -EBUSY;
  goto no_port;
 }


 val = inb(port + CPU5WDT_STATUS_REG);
 val = (val >> 2) & 1;
 if (!val)
  pr_info("sorry, was my fault\n");

 err = misc_register(&cpu5wdt_misc);
 if (err < 0) {
  pr_err("misc_register failed\n");
  goto no_misc;
 }


 pr_info("init success\n");
 return 0;

no_misc:
 release_region(port, CPU5WDT_EXTENT);
no_port:
 return err;
}
