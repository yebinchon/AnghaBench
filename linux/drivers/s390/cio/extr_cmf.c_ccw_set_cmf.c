
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {int dummy; } ;
struct TYPE_2__ {int (* set ) (struct ccw_device*,int) ;} ;


 TYPE_1__* cmbops ;
 int stub1 (struct ccw_device*,int) ;

int ccw_set_cmf(struct ccw_device *cdev, int enable)
{
 return cmbops->set(cdev, enable ? 2 : 0);
}
