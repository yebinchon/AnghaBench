
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ type; int request_queue; } ;


 scalar_t__ TYPE_TAPE ;
 int blk_queue_max_hw_sectors (int ,int) ;

__attribute__((used)) static int hptiop_slave_config(struct scsi_device *sdev)
{
 if (sdev->type == TYPE_TAPE)
  blk_queue_max_hw_sectors(sdev->request_queue, 8192);

 return 0;
}
