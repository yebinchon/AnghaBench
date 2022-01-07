
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int KERN_NOTICE ;
 int MAX_COMMAND_SIZE ;
 unsigned char MODE_SENSE ;
 int SCSI_TIMEOUT ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,unsigned char*,int,int *,int ,int,int *) ;
 int sdev_printk (int ,struct scsi_device*,char*) ;

__attribute__((used)) static void scsi_unlock_floptical(struct scsi_device *sdev,
      unsigned char *result)
{
 unsigned char scsi_cmd[MAX_COMMAND_SIZE];

 sdev_printk(KERN_NOTICE, sdev, "unlocking floptical drive\n");
 scsi_cmd[0] = MODE_SENSE;
 scsi_cmd[1] = 0;
 scsi_cmd[2] = 0x2e;
 scsi_cmd[3] = 0;
 scsi_cmd[4] = 0x2a;
 scsi_cmd[5] = 0;
 scsi_execute_req(sdev, scsi_cmd, DMA_FROM_DEVICE, result, 0x2a, ((void*)0),
    SCSI_TIMEOUT, 3, ((void*)0));
}
