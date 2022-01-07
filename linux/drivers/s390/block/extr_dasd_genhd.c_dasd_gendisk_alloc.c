
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int first_minor; int queue; scalar_t__ disk_name; int * fops; int major; } ;
struct dasd_device {int devindex; int features; TYPE_1__* cdev; int flags; } ;
struct dasd_block {struct gendisk* gdp; int request_queue; struct dasd_device* base; } ;
struct TYPE_2__ {int dev; } ;


 int DASD_FEATURE_READONLY ;
 int DASD_FLAG_DEVICE_RO ;
 int DASD_MAJOR ;
 int DASD_PARTN_BITS ;
 int DASD_PER_MAJOR ;
 int EBUSY ;
 int ENOMEM ;
 struct gendisk* alloc_disk (int) ;
 int dasd_add_link_to_gendisk (struct gendisk*,struct dasd_device*) ;
 int dasd_device_operations ;
 int device_add_disk (int *,struct gendisk*,int *) ;
 int set_capacity (struct gendisk*,int ) ;
 int set_disk_ro (struct gendisk*,int) ;
 int sprintf (scalar_t__,char*,...) ;
 scalar_t__ test_bit (int ,int *) ;

int dasd_gendisk_alloc(struct dasd_block *block)
{
 struct gendisk *gdp;
 struct dasd_device *base;
 int len;


 base = block->base;
 if (base->devindex >= DASD_PER_MAJOR)
  return -EBUSY;

 gdp = alloc_disk(1 << DASD_PARTN_BITS);
 if (!gdp)
  return -ENOMEM;


 gdp->major = DASD_MAJOR;
 gdp->first_minor = base->devindex << DASD_PARTN_BITS;
 gdp->fops = &dasd_device_operations;
 len = sprintf(gdp->disk_name, "dasd");
 if (base->devindex > 25) {
  if (base->devindex > 701) {
   if (base->devindex > 18277)
           len += sprintf(gdp->disk_name + len, "%c",
            'a'+(((base->devindex-18278)
           /17576)%26));
   len += sprintf(gdp->disk_name + len, "%c",
           'a'+(((base->devindex-702)/676)%26));
  }
  len += sprintf(gdp->disk_name + len, "%c",
          'a'+(((base->devindex-26)/26)%26));
 }
 len += sprintf(gdp->disk_name + len, "%c", 'a'+(base->devindex%26));

 if (base->features & DASD_FEATURE_READONLY ||
     test_bit(DASD_FLAG_DEVICE_RO, &base->flags))
  set_disk_ro(gdp, 1);
 dasd_add_link_to_gendisk(gdp, base);
 gdp->queue = block->request_queue;
 block->gdp = gdp;
 set_capacity(block->gdp, 0);
 device_add_disk(&base->cdev->dev, block->gdp, ((void*)0));
 return 0;
}
