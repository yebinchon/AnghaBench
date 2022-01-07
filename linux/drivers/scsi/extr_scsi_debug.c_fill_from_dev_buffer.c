
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nents; int sgl; } ;
struct scsi_data_buffer {TYPE_1__ table; int length; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; struct scsi_data_buffer sdb; } ;


 int DID_ERROR ;
 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;
 int sg_copy_from_buffer (int ,int ,unsigned char*,int) ;

__attribute__((used)) static int fill_from_dev_buffer(struct scsi_cmnd *scp, unsigned char *arr,
    int arr_len)
{
 int act_len;
 struct scsi_data_buffer *sdb = &scp->sdb;

 if (!sdb->length)
  return 0;
 if (scp->sc_data_direction != DMA_FROM_DEVICE)
  return DID_ERROR << 16;

 act_len = sg_copy_from_buffer(sdb->table.sgl, sdb->table.nents,
          arr, arr_len);
 scsi_set_resid(scp, scsi_bufflen(scp) - act_len);

 return 0;
}
