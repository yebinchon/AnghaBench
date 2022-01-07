
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* dev; } ;
struct pmem_device {TYPE_1__ bb; } ;
struct device {int dummy; } ;



__attribute__((used)) static struct device *to_dev(struct pmem_device *pmem)
{




 return pmem->bb.dev;
}
