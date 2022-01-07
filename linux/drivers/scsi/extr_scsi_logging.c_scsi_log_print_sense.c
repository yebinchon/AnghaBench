
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_device {int dummy; } ;


 int scsi_log_dump_sense (struct scsi_device const*,char const*,int,unsigned char const*,int) ;
 int scsi_log_print_sense_hdr (struct scsi_device const*,char const*,int,struct scsi_sense_hdr*) ;
 scalar_t__ scsi_normalize_sense (unsigned char const*,int,struct scsi_sense_hdr*) ;

__attribute__((used)) static void
scsi_log_print_sense(const struct scsi_device *sdev, const char *name, int tag,
       const unsigned char *sense_buffer, int sense_len)
{
 struct scsi_sense_hdr sshdr;

 if (scsi_normalize_sense(sense_buffer, sense_len, &sshdr))
  scsi_log_print_sense_hdr(sdev, name, tag, &sshdr);
 else
  scsi_log_dump_sense(sdev, name, tag, sense_buffer, sense_len);
}
