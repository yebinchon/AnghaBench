
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__ sc_data_direction; } ;


 scalar_t__ DMA_TO_DEVICE ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_sg_copy_to_buffer (struct scsi_cmnd*,unsigned char*,int) ;

__attribute__((used)) static int fetch_to_dev_buffer(struct scsi_cmnd *scp, unsigned char *arr,
          int arr_len)
{
 if (!scsi_bufflen(scp))
  return 0;
 if (scp->sc_data_direction != DMA_TO_DEVICE)
  return -1;

 return scsi_sg_copy_to_buffer(scp, arr, arr_len);
}
