
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int KERN_EMERG ;
 int panic (char*) ;
 int shost_printk (int ,struct Scsi_Host*,char*,char*) ;
 int show_queues (struct Scsi_Host*) ;

__attribute__((used)) static void aha152x_error(struct Scsi_Host *shpnt, char *msg)
{
 shost_printk(KERN_EMERG, shpnt, "%s\n", msg);
 show_queues(shpnt);
 panic("aha152x panic\n");
}
