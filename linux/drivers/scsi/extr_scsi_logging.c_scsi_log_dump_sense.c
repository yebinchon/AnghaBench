
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; } ;


 int KERN_INFO ;
 int dev_printk (int ,int *,char*,char*) ;
 int hex_dump_to_buffer (unsigned char const*,int,int,int,char*,size_t,int) ;
 int min (int,int) ;
 int scsi_log_release_buffer (char*) ;
 char* scsi_log_reserve_buffer (size_t*) ;
 size_t sdev_format_header (char*,size_t,char const*,int) ;

__attribute__((used)) static void
scsi_log_dump_sense(const struct scsi_device *sdev, const char *name, int tag,
      const unsigned char *sense_buffer, int sense_len)
{
 char *logbuf;
 size_t logbuf_len;
 int i;

 logbuf = scsi_log_reserve_buffer(&logbuf_len);
 if (!logbuf)
  return;

 for (i = 0; i < sense_len; i += 16) {
  int len = min(sense_len - i, 16);
  size_t off;

  off = sdev_format_header(logbuf, logbuf_len,
      name, tag);
  hex_dump_to_buffer(&sense_buffer[i], len, 16, 1,
       logbuf + off, logbuf_len - off,
       0);
  dev_printk(KERN_INFO, &sdev->sdev_gendev, "%s", logbuf);
 }
 scsi_log_release_buffer(logbuf);
}
