
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int scsi_log_print_sense (struct scsi_device const*,char const*,int,unsigned char const*,int) ;

void __scsi_print_sense(const struct scsi_device *sdev, const char *name,
   const unsigned char *sense_buffer, int sense_len)
{
 scsi_log_print_sense(sdev, name, -1, sense_buffer, sense_len);
}
