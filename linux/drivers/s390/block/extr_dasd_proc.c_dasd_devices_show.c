
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct dasd_device {int features; int state; TYPE_2__* discipline; TYPE_1__* cdev; struct dasd_block* block; } ;
struct dasd_block {int bp_block; int blocks; TYPE_3__* gdp; } ;
struct TYPE_6__ {int disk_name; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int dev; } ;


 int DASD_FEATURE_READONLY ;






 scalar_t__ IS_ERR (struct dasd_device*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int dasd_check_blocksize (int) ;
 struct dasd_device* dasd_device_from_devindex (unsigned long) ;
 scalar_t__ dasd_probeonly ;
 int dasd_put_device (struct dasd_device*) ;
 int dev_name (int *) ;
 int disk_devt (TYPE_3__*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int
dasd_devices_show(struct seq_file *m, void *v)
{
 struct dasd_device *device;
 struct dasd_block *block;
 char *substr;

 device = dasd_device_from_devindex((unsigned long) v - 1);
 if (IS_ERR(device))
  return 0;
 if (device->block)
  block = device->block;
 else {
  dasd_put_device(device);
  return 0;
 }

 seq_printf(m, "%s", dev_name(&device->cdev->dev));

 if (device->discipline != ((void*)0))
  seq_printf(m, "(%s)", device->discipline->name);
 else
  seq_printf(m, "(none)");

 if (block->gdp)
  seq_printf(m, " at (%3d:%6d)",
      MAJOR(disk_devt(block->gdp)),
      MINOR(disk_devt(block->gdp)));
 else
  seq_printf(m, "  at (???:??????)");

 if (block->gdp)
  seq_printf(m, " is %-8s", block->gdp->disk_name);
 else
  seq_printf(m, " is ????????");

 substr = (device->features & DASD_FEATURE_READONLY) ? "(ro)" : " ";
 seq_printf(m, "%4s: ", substr);

 switch (device->state) {
 case 131:
  seq_printf(m, "new");
  break;
 case 132:
  seq_printf(m, "detected");
  break;
 case 133:
  seq_printf(m, "basic");
  break;
 case 128:
  seq_printf(m, "unformatted");
  break;
 case 129:
 case 130:
  seq_printf(m, "active ");
  if (dasd_check_blocksize(block->bp_block))
   seq_printf(m, "n/f	 ");
  else
   seq_printf(m,
       "at blocksize: %u, %lu blocks, %lu MB",
       block->bp_block, block->blocks,
       ((block->bp_block >> 9) *
        block->blocks) >> 11);
  break;
 default:
  seq_printf(m, "no stat");
  break;
 }
 dasd_put_device(device);
 if (dasd_probeonly)
  seq_printf(m, "(probeonly)");
 seq_printf(m, "\n");
 return 0;
}
