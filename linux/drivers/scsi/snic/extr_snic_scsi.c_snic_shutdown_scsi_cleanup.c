
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {int shost; } ;


 int SCSI_NO_TAG ;
 int SNIC_HOST_INFO (int ,char*) ;
 int snic_scsi_cleanup (struct snic*,int ) ;

void
snic_shutdown_scsi_cleanup(struct snic *snic)
{
 SNIC_HOST_INFO(snic->shost, "Shutdown time SCSI Cleanup.\n");

 snic_scsi_cleanup(snic, SCSI_NO_TAG);
}
