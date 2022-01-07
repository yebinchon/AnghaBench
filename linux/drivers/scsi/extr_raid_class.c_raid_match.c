
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {TYPE_1__* host; } ;
struct raid_internal {TYPE_2__* f; } ;
struct device {int dummy; } ;
struct attribute_container {int dummy; } ;
struct TYPE_4__ {scalar_t__ cookie; int (* is_raid ) (struct device*) ;} ;
struct TYPE_3__ {scalar_t__ hostt; } ;


 int CONFIG_SCSI ;
 scalar_t__ IS_ENABLED (int ) ;
 struct raid_internal* ac_to_raid_internal (struct attribute_container*) ;
 scalar_t__ scsi_is_sdev_device (struct device*) ;
 int stub1 (struct device*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int raid_match(struct attribute_container *cont, struct device *dev)
{


 struct raid_internal *i = ac_to_raid_internal(cont);

 if (IS_ENABLED(CONFIG_SCSI) && scsi_is_sdev_device(dev)) {
  struct scsi_device *sdev = to_scsi_device(dev);

  if (i->f->cookie != sdev->host->hostt)
   return 0;

  return i->f->is_raid(dev);
 }

 return 0;
}
