
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {struct Scsi_Host* host; } ;
typedef TYPE_1__ adpt_hba ;


 int adpt_i2o_delete_hba (TYPE_1__*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static void adpt_release(adpt_hba *pHba)
{
 struct Scsi_Host *shost = pHba->host;

 scsi_remove_host(shost);

 adpt_i2o_delete_hba(pHba);
 scsi_host_put(shost);
}
