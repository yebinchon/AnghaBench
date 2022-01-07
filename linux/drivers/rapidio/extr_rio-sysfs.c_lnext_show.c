
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_dev {int pef; TYPE_1__* rswitch; int swpinfo; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__* nextdev; } ;


 int RIO_GET_TOTAL_PORTS (int ) ;
 int RIO_PEF_SWITCH ;
 char* rio_name (scalar_t__) ;
 int sprintf (char*,char*,...) ;
 struct rio_dev* to_rio_dev (struct device*) ;

__attribute__((used)) static ssize_t lnext_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct rio_dev *rdev = to_rio_dev(dev);
 char *str = buf;
 int i;

 if (rdev->pef & RIO_PEF_SWITCH) {
  for (i = 0; i < RIO_GET_TOTAL_PORTS(rdev->swpinfo); i++) {
   if (rdev->rswitch->nextdev[i])
    str += sprintf(str, "%s\n",
     rio_name(rdev->rswitch->nextdev[i]));
   else
    str += sprintf(str, "null\n");
  }
 }

 return str - buf;
}
