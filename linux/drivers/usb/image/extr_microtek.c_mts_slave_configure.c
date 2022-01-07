
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;


 int blk_queue_dma_alignment (int ,int) ;

__attribute__((used)) static int mts_slave_configure (struct scsi_device *s)
{
 blk_queue_dma_alignment(s->request_queue, (512 - 1));
 return 0;
}
