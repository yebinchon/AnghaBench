
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {scalar_t__ protocol; scalar_t__ max_lun; } ;
struct scsi_device {int inquiry_len; int sdev_bflags; int request_queue; int host; } ;


 int BLIST_FORCELUN ;
 scalar_t__ USB_PR_BULK ;
 int blk_queue_update_dma_alignment (int ,int) ;
 struct us_data* host_to_us (int ) ;

__attribute__((used)) static int slave_alloc (struct scsi_device *sdev)
{
 struct us_data *us = host_to_us(sdev->host);






 sdev->inquiry_len = 36;





 blk_queue_update_dma_alignment(sdev->request_queue, (512 - 1));


 if (us->protocol == USB_PR_BULK && us->max_lun > 0)
  sdev->sdev_bflags |= BLIST_FORCELUN;

 return 0;
}
