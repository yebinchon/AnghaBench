
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct scsi_device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int EIO ;
 int HZ ;
 unsigned char INQUIRY ;
 int get_unaligned_be16 (unsigned char*) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,unsigned char*,unsigned int,int *,int,int,int *) ;

__attribute__((used)) static int scsi_vpd_inquiry(struct scsi_device *sdev, unsigned char *buffer,
       u8 page, unsigned len)
{
 int result;
 unsigned char cmd[16];

 if (len < 4)
  return -EINVAL;

 cmd[0] = INQUIRY;
 cmd[1] = 1;
 cmd[2] = page;
 cmd[3] = len >> 8;
 cmd[4] = len & 0xff;
 cmd[5] = 0;





 result = scsi_execute_req(sdev, cmd, DMA_FROM_DEVICE, buffer,
      len, ((void*)0), 30 * HZ, 3, ((void*)0));
 if (result)
  return -EIO;


 if (buffer[1] != page)
  return -EIO;

 return get_unaligned_be16(&buffer[2]) + 4;
}
