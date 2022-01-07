
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_ns {TYPE_1__* bdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int bd_disk; } ;


 struct device* disk_to_dev (int ) ;

__attribute__((used)) static inline struct device *nvmet_ns_dev(struct nvmet_ns *ns)
{
 return ns->bdev ? disk_to_dev(ns->bdev->bd_disk) : ((void*)0);
}
