
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct seq_file {int dummy; } ;
struct scsi_device {scalar_t__ lun; TYPE_1__* sdev_target; } ;
struct ahd_linux_device {int qfrozen; int maxtags; int openings; int active; int commands_issued; } ;
struct TYPE_2__ {int id; scalar_t__ channel; } ;


 struct ahd_linux_device* scsi_transport_device_data (struct scsi_device*) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;

__attribute__((used)) static void
ahd_dump_device_state(struct seq_file *m, struct scsi_device *sdev)
{
 struct ahd_linux_device *dev = scsi_transport_device_data(sdev);

 seq_printf(m, "\tChannel %c Target %d Lun %d Settings\n",
    sdev->sdev_target->channel + 'A',
     sdev->sdev_target->id, (u8)sdev->lun);

 seq_printf(m, "\t\tCommands Queued %ld\n", dev->commands_issued);
 seq_printf(m, "\t\tCommands Active %d\n", dev->active);
 seq_printf(m, "\t\tCommand Openings %d\n", dev->openings);
 seq_printf(m, "\t\tMax Tagged Openings %d\n", dev->maxtags);
 seq_printf(m, "\t\tDevice Queue Frozen Count %d\n", dev->qfrozen);
}
