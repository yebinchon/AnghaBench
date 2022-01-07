
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int ascq; int asc; } ;
struct scsi_device {int sdev_gendev; } ;


 int KERN_INFO ;
 int dev_printk (int ,int *,char*,char*) ;
 scalar_t__ scsi_format_extd_sense (char*,size_t,int ,int ) ;
 scalar_t__ scsi_format_sense_hdr (char*,size_t,struct scsi_sense_hdr const*) ;
 int scsi_log_release_buffer (char*) ;
 char* scsi_log_reserve_buffer (size_t*) ;
 size_t sdev_format_header (char*,size_t,char const*,int) ;

__attribute__((used)) static void
scsi_log_print_sense_hdr(const struct scsi_device *sdev, const char *name,
    int tag, const struct scsi_sense_hdr *sshdr)
{
 char *logbuf;
 size_t off, logbuf_len;

 logbuf = scsi_log_reserve_buffer(&logbuf_len);
 if (!logbuf)
  return;
 off = sdev_format_header(logbuf, logbuf_len, name, tag);
 off += scsi_format_sense_hdr(logbuf + off, logbuf_len - off, sshdr);
 dev_printk(KERN_INFO, &sdev->sdev_gendev, "%s", logbuf);
 scsi_log_release_buffer(logbuf);

 logbuf = scsi_log_reserve_buffer(&logbuf_len);
 if (!logbuf)
  return;
 off = sdev_format_header(logbuf, logbuf_len, name, tag);
 off += scsi_format_extd_sense(logbuf + off, logbuf_len - off,
          sshdr->asc, sshdr->ascq);
 dev_printk(KERN_INFO, &sdev->sdev_gendev, "%s", logbuf);
 scsi_log_release_buffer(logbuf);
}
