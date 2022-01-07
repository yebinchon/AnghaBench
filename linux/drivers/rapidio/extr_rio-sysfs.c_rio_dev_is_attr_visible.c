
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ umode_t ;
struct rio_dev {int pef; } ;
struct kobject {int dummy; } ;
struct attribute {scalar_t__ mode; } ;
struct TYPE_6__ {struct attribute attr; } ;
struct TYPE_5__ {struct attribute attr; } ;
struct TYPE_4__ {struct attribute attr; } ;


 int RIO_PEF_SWITCH ;
 TYPE_3__ dev_attr_hopcount ;
 TYPE_2__ dev_attr_lnext ;
 TYPE_1__ dev_attr_routes ;
 int kobj_to_dev (struct kobject*) ;
 struct rio_dev* to_rio_dev (int ) ;

__attribute__((used)) static umode_t rio_dev_is_attr_visible(struct kobject *kobj,
           struct attribute *attr, int n)
{
 struct rio_dev *rdev = to_rio_dev(kobj_to_dev(kobj));
 umode_t mode = attr->mode;

 if (!(rdev->pef & RIO_PEF_SWITCH) &&
     (attr == &dev_attr_routes.attr ||
      attr == &dev_attr_lnext.attr ||
      attr == &dev_attr_hopcount.attr)) {



  mode = 0;
 }

 return mode;
}
