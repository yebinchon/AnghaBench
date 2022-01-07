
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int dev_model; int dev_type; int cu_model; int cu_type; } ;
struct ccw_device {TYPE_3__* private; TYPE_4__ id; } ;
struct TYPE_7__ {TYPE_2__* dma_area; } ;
struct TYPE_5__ {int dev_model; int dev_type; int cu_model; int cu_type; } ;
struct TYPE_6__ {TYPE_1__ senseid; } ;


 int memset (TYPE_4__*,int ,int) ;

void ccw_device_update_sense_data(struct ccw_device *cdev)
{
 memset(&cdev->id, 0, sizeof(cdev->id));
 cdev->id.cu_type = cdev->private->dma_area->senseid.cu_type;
 cdev->id.cu_model = cdev->private->dma_area->senseid.cu_model;
 cdev->id.dev_type = cdev->private->dma_area->senseid.dev_type;
 cdev->id.dev_model = cdev->private->dma_area->senseid.dev_model;
}
