
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ link_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 scalar_t__ LPFC_HBA_ERROR ;
 scalar_t__ LPFC_INIT_START ;
 scalar_t__ LPFC_WARM_START ;
 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
lpfc_board_mode_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 char * state;

 if (phba->link_state == LPFC_HBA_ERROR)
  state = "error";
 else if (phba->link_state == LPFC_WARM_START)
  state = "warm start";
 else if (phba->link_state == LPFC_INIT_START)
  state = "offline";
 else
  state = "online";

 return scnprintf(buf, PAGE_SIZE, "%s\n", state);
}
