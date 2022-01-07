
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pgid {int dummy; } ;
struct ccw_device {TYPE_2__* private; } ;
struct TYPE_4__ {TYPE_1__* dma_area; } ;
struct TYPE_3__ {int * pgid; } ;


 int memcpy (int *,struct pgid*,int) ;

__attribute__((used)) static void pgid_fill(struct ccw_device *cdev, struct pgid *pgid)
{
 int i;

 for (i = 0; i < 8; i++)
  memcpy(&cdev->private->dma_area->pgid[i], pgid,
         sizeof(struct pgid));
}
