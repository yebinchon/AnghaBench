
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ccw_device {TYPE_3__* private; } ;
struct TYPE_5__ {scalar_t__ doverify; int mpath; int pgroup; } ;
struct TYPE_4__ {int mpath; int pgroup; } ;
struct TYPE_6__ {scalar_t__ path_noirq_mask; TYPE_2__ flags; TYPE_1__ options; int dev_id; } ;


 int CIO_HEX_EVENT (int,int *,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int verify_start (struct ccw_device*) ;

void ccw_device_verify_start(struct ccw_device *cdev)
{
 CIO_TRACE_EVENT(4, "vrfy");
 CIO_HEX_EVENT(4, &cdev->private->dev_id, sizeof(cdev->private->dev_id));




 cdev->private->flags.pgroup = cdev->private->options.pgroup;
 cdev->private->flags.mpath = cdev->private->options.mpath;
 cdev->private->flags.doverify = 0;
 cdev->private->path_noirq_mask = 0;
 verify_start(cdev);
}
