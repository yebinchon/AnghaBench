
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmbdata {int dummy; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int (* readall ) (struct ccw_device*,struct cmbdata*) ;} ;


 TYPE_1__* cmbops ;
 int stub1 (struct ccw_device*,struct cmbdata*) ;

int cmf_readall(struct ccw_device *cdev, struct cmbdata *data)
{
 return cmbops->readall(cdev, data);
}
