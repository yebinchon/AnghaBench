
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int brd_no; TYPE_1__* pcidev; int cfg_soft_wwnn; int soft_wwn_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int KERN_NOTICE ;
 int WWN_SZ ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int dev_printk (int ,int *,char*,int ) ;
 int lpfc_wwn_set (char const*,unsigned int,int *) ;
 int wwn_to_u64 (int *) ;

__attribute__((used)) static ssize_t
lpfc_soft_wwnn_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;
 unsigned int cnt = count;
 u8 wwnn[WWN_SZ];
 int rc;


 if (buf[cnt-1] == '\n')
  cnt--;

 if (!phba->soft_wwn_enable)
  return -EINVAL;

 rc = lpfc_wwn_set(buf, cnt, wwnn);
 if (rc) {



  return rc;
 }

 phba->cfg_soft_wwnn = wwn_to_u64(wwnn);

 dev_printk(KERN_NOTICE, &phba->pcidev->dev,
     "lpfc%d: soft_wwnn set. Value will take effect upon "
     "setting of the soft_wwpn\n", phba->brd_no);

 return count;
}
