
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {scalar_t__ sense_key; } ;
struct scsi_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 scalar_t__ DRIVER_SENSE ;
 int DV_RETRIES ;
 int DV_TIMEOUT ;
 int REQ_FAILFAST_DEV ;
 int REQ_FAILFAST_DRIVER ;
 int REQ_FAILFAST_TRANSPORT ;
 int SCSI_SENSE_BUFFERSIZE ;
 scalar_t__ UNIT_ATTENTION ;
 scalar_t__ driver_byte (int) ;
 int scsi_execute (struct scsi_device*,void const*,int,void*,unsigned int,unsigned char*,struct scsi_sense_hdr*,int ,int,int,int ,int *) ;

__attribute__((used)) static int spi_execute(struct scsi_device *sdev, const void *cmd,
         enum dma_data_direction dir,
         void *buffer, unsigned bufflen,
         struct scsi_sense_hdr *sshdr)
{
 int i, result;
 unsigned char sense[SCSI_SENSE_BUFFERSIZE];
 struct scsi_sense_hdr sshdr_tmp;

 if (!sshdr)
  sshdr = &sshdr_tmp;

 for(i = 0; i < DV_RETRIES; i++) {
  result = scsi_execute(sdev, cmd, dir, buffer, bufflen, sense,
          sshdr, DV_TIMEOUT, 1,
          REQ_FAILFAST_DEV |
          REQ_FAILFAST_TRANSPORT |
          REQ_FAILFAST_DRIVER,
          0, ((void*)0));
  if (driver_byte(result) != DRIVER_SENSE ||
      sshdr->sense_key != UNIT_ATTENTION)
   break;
 }
 return result;
}
