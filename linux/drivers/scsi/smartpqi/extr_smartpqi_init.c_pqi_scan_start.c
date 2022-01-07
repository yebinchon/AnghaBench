
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 scalar_t__ pqi_ctrl_in_ofa (struct pqi_ctrl_info*) ;
 int pqi_scan_scsi_devices (struct pqi_ctrl_info*) ;
 struct pqi_ctrl_info* shost_to_hba (struct Scsi_Host*) ;

__attribute__((used)) static void pqi_scan_start(struct Scsi_Host *shost)
{
 struct pqi_ctrl_info *ctrl_info;

 ctrl_info = shost_to_hba(shost);
 if (pqi_ctrl_in_ofa(ctrl_info))
  return;

 pqi_scan_scsi_devices(ctrl_info);
}
