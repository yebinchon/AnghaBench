
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_sli_ring {int txq_max; } ;
struct lpfc_hba {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct lpfc_sli_ring* lpfc_phba_elsring (struct lpfc_hba*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
lpfc_txq_hw_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_hba *phba = ((struct lpfc_vport *) shost->hostdata)->phba;
 struct lpfc_sli_ring *pring = lpfc_phba_elsring(phba);

 return scnprintf(buf, PAGE_SIZE, "%d\n",
   pring ? pring->txq_max : 0);
}
