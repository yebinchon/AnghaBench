
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_device {int dummy; } ;


 int scsi_log_print_sense_hdr (struct scsi_device const*,char const*,int,struct scsi_sense_hdr const*) ;

void
scsi_print_sense_hdr(const struct scsi_device *sdev, const char *name,
       const struct scsi_sense_hdr *sshdr)
{
 scsi_log_print_sense_hdr(sdev, name, -1, sshdr);
}
