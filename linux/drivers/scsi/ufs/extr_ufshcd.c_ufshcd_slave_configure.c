
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;


 scalar_t__ PRDT_DATA_BYTE_COUNT_PAD ;
 int blk_queue_update_dma_pad (struct request_queue*,scalar_t__) ;

__attribute__((used)) static int ufshcd_slave_configure(struct scsi_device *sdev)
{
 struct request_queue *q = sdev->request_queue;

 blk_queue_update_dma_pad(q, PRDT_DATA_BYTE_COUNT_PAD - 1);
 return 0;
}
