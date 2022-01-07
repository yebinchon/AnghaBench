
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rio_dev {TYPE_1__* rswitch; TYPE_2__* net; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int sys_size; } ;
struct TYPE_5__ {TYPE_3__* hport; } ;
struct TYPE_4__ {scalar_t__* route_table; } ;


 scalar_t__ RIO_INVALID_ROUTE ;
 int RIO_MAX_ROUTE_ENTRIES (int ) ;
 int sprintf (char*,char*,int,scalar_t__) ;
 struct rio_dev* to_rio_dev (struct device*) ;

__attribute__((used)) static ssize_t routes_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct rio_dev *rdev = to_rio_dev(dev);
 char *str = buf;
 int i;

 for (i = 0; i < RIO_MAX_ROUTE_ENTRIES(rdev->net->hport->sys_size);
   i++) {
  if (rdev->rswitch->route_table[i] == RIO_INVALID_ROUTE)
   continue;
  str +=
      sprintf(str, "%04x %02x\n", i,
       rdev->rswitch->route_table[i]);
 }

 return (str - buf);
}
