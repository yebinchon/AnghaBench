
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 unsigned long HZ ;
 int SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 int sas_drain_work (int ) ;

__attribute__((used)) static int asd_scan_finished(struct Scsi_Host *shost, unsigned long time)
{


 if (time < HZ)
  return 0;

 sas_drain_work(SHOST_TO_SAS_HA(shost));
 return 1;
}
