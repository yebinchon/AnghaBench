
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {int fdmi_port_mask; int fdmi_hba_mask; int load_flag; } ;
struct lpfc_hba {scalar_t__ cfg_fdmi_on; scalar_t__ cfg_enable_SmartSAN; TYPE_1__* pcidev; int cfg_enable_fc4_type; int * targetport; int * txrdy_payload_pool; scalar_t__ nvmet_support; struct lpfc_vport* pport; int brd_no; int sdev_cnt; int fc_arbtov; int fc_altov; int fc_ratov; int fc_edtov; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int FC_ALLOW_FDMI ;
 int FF_DEF_ALTOV ;
 int FF_DEF_ARBTOV ;
 int FF_DEF_EDTOV ;
 int FF_DEF_RATOV ;
 int KERN_INFO ;
 int LOG_INIT ;
 int LOG_NVME_DISC ;
 int LPFC_ENABLE_NVME ;
 int LPFC_FDMI2_HBA_ATTR ;
 int LPFC_FDMI2_PORT_ATTR ;
 int LPFC_FDMI2_SMART_ATTR ;
 scalar_t__ LPFC_FDMI_SUPPORT ;
 int TXRDY_PAYLOAD_LEN ;
 int atomic_set (int *,int ) ;
 int * dma_pool_create (char*,int *,int ,int,int ) ;
 struct lpfc_vport* lpfc_create_port (struct lpfc_hba*,int ,int *) ;
 int lpfc_debugfs_initialize (struct lpfc_vport*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int pci_set_drvdata (TYPE_1__*,struct Scsi_Host*) ;

__attribute__((used)) static int
lpfc_create_shost(struct lpfc_hba *phba)
{
 struct lpfc_vport *vport;
 struct Scsi_Host *shost;


 phba->fc_edtov = FF_DEF_EDTOV;
 phba->fc_ratov = FF_DEF_RATOV;
 phba->fc_altov = FF_DEF_ALTOV;
 phba->fc_arbtov = FF_DEF_ARBTOV;

 atomic_set(&phba->sdev_cnt, 0);
 vport = lpfc_create_port(phba, phba->brd_no, &phba->pcidev->dev);
 if (!vport)
  return -ENODEV;

 shost = lpfc_shost_from_vport(vport);
 phba->pport = vport;

 if (phba->nvmet_support) {

  if (phba->txrdy_payload_pool == ((void*)0)) {
   phba->txrdy_payload_pool = dma_pool_create(
    "txrdy_pool", &phba->pcidev->dev,
    TXRDY_PAYLOAD_LEN, 16, 0);
   if (phba->txrdy_payload_pool) {
    phba->targetport = ((void*)0);
    phba->cfg_enable_fc4_type = LPFC_ENABLE_NVME;
    lpfc_printf_log(phba, KERN_INFO,
      LOG_INIT | LOG_NVME_DISC,
      "6076 NVME Target Found\n");
   }
  }
 }

 lpfc_debugfs_initialize(vport);

 pci_set_drvdata(phba->pcidev, shost);





 vport->load_flag |= FC_ALLOW_FDMI;
 if (phba->cfg_enable_SmartSAN ||
     (phba->cfg_fdmi_on == LPFC_FDMI_SUPPORT)) {


  vport->fdmi_hba_mask = LPFC_FDMI2_HBA_ATTR;
  if (phba->cfg_enable_SmartSAN)
   vport->fdmi_port_mask = LPFC_FDMI2_SMART_ATTR;
  else
   vport->fdmi_port_mask = LPFC_FDMI2_PORT_ATTR;
 }
 return 0;
}
