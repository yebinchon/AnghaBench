
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {TYPE_2__* host; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct TYPE_4__ {int starved_list; } ;
struct TYPE_3__ {scalar_t__ single_lun; } ;


 int blk_mq_run_hw_queues (struct request_queue*,int) ;
 int list_empty (int *) ;
 int scsi_single_lun_run (struct scsi_device*) ;
 int scsi_starved_list_run (TYPE_2__*) ;
 TYPE_1__* scsi_target (struct scsi_device*) ;

__attribute__((used)) static void scsi_run_queue(struct request_queue *q)
{
 struct scsi_device *sdev = q->queuedata;

 if (scsi_target(sdev)->single_lun)
  scsi_single_lun_run(sdev);
 if (!list_empty(&sdev->host->starved_list))
  scsi_starved_list_run(sdev->host);

 blk_mq_run_hw_queues(q, 0);
}
