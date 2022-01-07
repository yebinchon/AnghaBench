
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmem_device {int dummy; } ;
struct nd_region {int dummy; } ;
struct TYPE_2__ {int parent; } ;


 TYPE_1__* to_dev (struct pmem_device*) ;
 struct nd_region* to_nd_region (int ) ;

__attribute__((used)) static struct nd_region *to_region(struct pmem_device *pmem)
{
 return to_nd_region(to_dev(pmem)->parent);
}
