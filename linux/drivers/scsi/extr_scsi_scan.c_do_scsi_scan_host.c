
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int (* scan_finished ) (struct Scsi_Host*,unsigned long) ;int (* scan_start ) (struct Scsi_Host*) ;} ;


 int SCAN_WILD_CARD ;
 unsigned long jiffies ;
 int msleep (int) ;
 int scsi_scan_host_selected (struct Scsi_Host*,int ,int ,int ,int ) ;
 int stub1 (struct Scsi_Host*) ;
 int stub2 (struct Scsi_Host*,unsigned long) ;

__attribute__((used)) static void do_scsi_scan_host(struct Scsi_Host *shost)
{
 if (shost->hostt->scan_finished) {
  unsigned long start = jiffies;
  if (shost->hostt->scan_start)
   shost->hostt->scan_start(shost);

  while (!shost->hostt->scan_finished(shost, jiffies - start))
   msleep(10);
 } else {
  scsi_scan_host_selected(shost, SCAN_WILD_CARD, SCAN_WILD_CARD,
    SCAN_WILD_CARD, 0);
 }
}
