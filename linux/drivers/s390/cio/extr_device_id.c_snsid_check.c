
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct senseid {int dummy; } ;
struct cmd_scsw {int count; } ;
struct ccw_device {TYPE_6__* private; } ;
struct TYPE_8__ {int esid; } ;
struct TYPE_12__ {TYPE_2__ flags; TYPE_5__* dma_area; } ;
struct TYPE_7__ {int cu_type; int reserved; } ;
struct TYPE_9__ {struct cmd_scsw cmd; } ;
struct TYPE_10__ {TYPE_3__ scsw; } ;
struct TYPE_11__ {TYPE_1__ senseid; TYPE_4__ irb; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;
 int SENSE_ID_BASIC_LEN ;
 int SENSE_ID_MIN_LEN ;
 int snsid_init (struct ccw_device*) ;

__attribute__((used)) static int snsid_check(struct ccw_device *cdev, void *data)
{
 struct cmd_scsw *scsw = &cdev->private->dma_area->irb.scsw.cmd;
 int len = sizeof(struct senseid) - scsw->count;


 if (len < SENSE_ID_MIN_LEN)
  goto out_restart;
 if (cdev->private->dma_area->senseid.cu_type == 0xffff)
  goto out_restart;

 if (cdev->private->dma_area->senseid.reserved != 0xff)
  return -EOPNOTSUPP;

 if (len > SENSE_ID_BASIC_LEN)
  cdev->private->flags.esid = 1;
 return 0;

out_restart:
 snsid_init(cdev);
 return -EAGAIN;
}
