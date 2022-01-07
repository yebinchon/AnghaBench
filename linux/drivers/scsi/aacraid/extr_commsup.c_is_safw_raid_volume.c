
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int maximum_num_containers; } ;


 int CONTAINER_CHANNEL ;

__attribute__((used)) static inline int is_safw_raid_volume(struct aac_dev *aac, int bus, int target)
{
 return bus == CONTAINER_CHANNEL && target < aac->maximum_num_containers;
}
