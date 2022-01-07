
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcm_loop_hba {struct Scsi_Host* sh; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 struct tcm_loop_hba* to_tcm_loop_hba (struct device*) ;

__attribute__((used)) static int tcm_loop_driver_remove(struct device *dev)
{
 struct tcm_loop_hba *tl_hba;
 struct Scsi_Host *sh;

 tl_hba = to_tcm_loop_hba(dev);
 sh = tl_hba->sh;

 scsi_remove_host(sh);
 scsi_host_put(sh);
 return 0;
}
