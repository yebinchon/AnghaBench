
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int (* read ) (struct ccw_device*,int) ;} ;


 TYPE_1__* cmbops ;
 int stub1 (struct ccw_device*,int) ;

u64 cmf_read(struct ccw_device *cdev, int index)
{
 return cmbops->read(cdev, index);
}
