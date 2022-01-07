
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {TYPE_1__* fsa_dev; } ;
struct TYPE_2__ {int valid; } ;


 int aac_is_safw_scan_count_equal (struct aac_dev*,int,int) ;
 scalar_t__ is_safw_raid_volume (struct aac_dev*,int,int) ;

__attribute__((used)) static int aac_is_safw_target_valid(struct aac_dev *dev, int bus, int target)
{
 if (is_safw_raid_volume(dev, bus, target))
  return dev->fsa_dev[target].valid;
 else
  return aac_is_safw_scan_count_equal(dev, bus, target);
}
