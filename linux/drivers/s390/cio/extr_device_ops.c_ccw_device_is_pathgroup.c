
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccw_device {TYPE_2__* private; } ;
struct TYPE_3__ {int pgroup; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;



int ccw_device_is_pathgroup(struct ccw_device *cdev)
{
 return cdev->private->flags.pgroup;
}
