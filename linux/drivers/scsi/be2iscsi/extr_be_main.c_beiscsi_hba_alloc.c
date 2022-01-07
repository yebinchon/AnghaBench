
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct beiscsi_hba {int interface_handle; int pcidev; struct Scsi_Host* shost; } ;
struct Scsi_Host {int transportt; int max_lun; int max_cmd_len; scalar_t__ max_channel; int max_id; } ;


 int BE2_MAX_SESSIONS ;
 int BEISCSI_MAX_CMD_LEN ;
 int BEISCSI_NUM_MAX_LUN ;
 int beiscsi_scsi_transport ;
 int beiscsi_sht ;
 int dev_err (int *,char*) ;
 struct Scsi_Host* iscsi_host_alloc (int *,int,int ) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int memset (struct beiscsi_hba*,int ,int) ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct beiscsi_hba*) ;

__attribute__((used)) static struct beiscsi_hba *beiscsi_hba_alloc(struct pci_dev *pcidev)
{
 struct beiscsi_hba *phba;
 struct Scsi_Host *shost;

 shost = iscsi_host_alloc(&beiscsi_sht, sizeof(*phba), 0);
 if (!shost) {
  dev_err(&pcidev->dev,
   "beiscsi_hba_alloc - iscsi_host_alloc failed\n");
  return ((void*)0);
 }
 shost->max_id = BE2_MAX_SESSIONS;
 shost->max_channel = 0;
 shost->max_cmd_len = BEISCSI_MAX_CMD_LEN;
 shost->max_lun = BEISCSI_NUM_MAX_LUN;
 shost->transportt = beiscsi_scsi_transport;
 phba = iscsi_host_priv(shost);
 memset(phba, 0, sizeof(*phba));
 phba->shost = shost;
 phba->pcidev = pci_dev_get(pcidev);
 pci_set_drvdata(pcidev, phba);
 phba->interface_handle = 0xFFFFFFFF;

 return phba;
}
