
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int flags; } ;


 int ENXIO ;
 int FLAG_TOSHIBA_DELAY ;
 int HZ ;
 int KERN_ERR ;
 int NCR5380_poll_politely (struct NCR5380_hostdata*,int ,int,int ,int) ;
 int NCR5380_read (int ) ;
 int SR_BSY ;
 int STATUS_REG ;
 int do_abort (struct Scsi_Host*) ;
 int do_reset (struct Scsi_Host*) ;
 int msleep (int) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 struct NCR5380_hostdata* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int NCR5380_maybe_reset_bus(struct Scsi_Host *instance)
{
 struct NCR5380_hostdata *hostdata = shost_priv(instance);
 int pass;

 for (pass = 1; (NCR5380_read(STATUS_REG) & SR_BSY) && pass <= 6; ++pass) {
  switch (pass) {
  case 1:
  case 3:
  case 5:
   shost_printk(KERN_ERR, instance, "SCSI bus busy, waiting up to five seconds\n");
   NCR5380_poll_politely(hostdata,
                         STATUS_REG, SR_BSY, 0, 5 * HZ);
   break;
  case 2:
   shost_printk(KERN_ERR, instance, "bus busy, attempting abort\n");
   do_abort(instance);
   break;
  case 4:
   shost_printk(KERN_ERR, instance, "bus busy, attempting reset\n");
   do_reset(instance);




   if (hostdata->flags & FLAG_TOSHIBA_DELAY)
    msleep(2500);
   else
    msleep(500);
   break;
  case 6:
   shost_printk(KERN_ERR, instance, "bus locked solid\n");
   return -ENXIO;
  }
 }
 return 0;
}
