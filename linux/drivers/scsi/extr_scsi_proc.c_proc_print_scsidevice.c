
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct scsi_device {int* vendor; int* model; int* rev; int scsi_level; int type; int lun; int id; int channel; TYPE_1__* host; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int host_no; } ;


 int scsi_device_type (int ) ;
 int scsi_is_sdev_device (struct device*) ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int proc_print_scsidevice(struct device *dev, void *data)
{
 struct scsi_device *sdev;
 struct seq_file *s = data;
 int i;

 if (!scsi_is_sdev_device(dev))
  goto out;

 sdev = to_scsi_device(dev);
 seq_printf(s,
  "Host: scsi%d Channel: %02d Id: %02d Lun: %02llu\n  Vendor: ",
  sdev->host->host_no, sdev->channel, sdev->id, sdev->lun);
 for (i = 0; i < 8; i++) {
  if (sdev->vendor[i] >= 0x20)
   seq_putc(s, sdev->vendor[i]);
  else
   seq_putc(s, ' ');
 }

 seq_puts(s, " Model: ");
 for (i = 0; i < 16; i++) {
  if (sdev->model[i] >= 0x20)
   seq_putc(s, sdev->model[i]);
  else
   seq_putc(s, ' ');
 }

 seq_puts(s, " Rev: ");
 for (i = 0; i < 4; i++) {
  if (sdev->rev[i] >= 0x20)
   seq_putc(s, sdev->rev[i]);
  else
   seq_putc(s, ' ');
 }

 seq_putc(s, '\n');

 seq_printf(s, "  Type:   %s ", scsi_device_type(sdev->type));
 seq_printf(s, "               ANSI  SCSI revision: %02x",
   sdev->scsi_level - (sdev->scsi_level > 1));
 if (sdev->scsi_level == 2)
  seq_puts(s, " CCS\n");
 else
  seq_putc(s, '\n');

out:
 return 0;
}
