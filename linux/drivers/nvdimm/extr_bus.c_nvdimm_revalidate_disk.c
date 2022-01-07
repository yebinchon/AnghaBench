
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nd_region {int ro; int dev; } ;
struct gendisk {int disk_name; } ;
struct device {int parent; } ;
struct TYPE_2__ {struct device* parent; } ;


 int dev_info (struct device*,char*,int ,int ) ;
 int dev_name (int *) ;
 TYPE_1__* disk_to_dev (struct gendisk*) ;
 int get_disk_ro (struct gendisk*) ;
 int set_disk_ro (struct gendisk*,int) ;
 struct nd_region* to_nd_region (int ) ;

int nvdimm_revalidate_disk(struct gendisk *disk)
{
 struct device *dev = disk_to_dev(disk)->parent;
 struct nd_region *nd_region = to_nd_region(dev->parent);
 int disk_ro = get_disk_ro(disk);





 if (disk_ro || nd_region->ro == disk_ro)
  return 0;

 dev_info(dev, "%s read-only, marking %s read-only\n",
   dev_name(&nd_region->dev), disk->disk_name);
 set_disk_ro(disk, 1);

 return 0;

}
