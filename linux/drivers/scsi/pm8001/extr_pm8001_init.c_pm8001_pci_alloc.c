
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {size_t chip_id; int logging_level; int * irq_vector; int * tasklet; int iomb_size; int name; scalar_t__ id; struct Scsi_Host* shost; struct sas_ha_struct* sas; int irq; int * chip; int * dev; struct pci_dev* pdev; } ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int msix_cap; int irq; int dev; } ;
struct Scsi_Host {int dummy; } ;


 char* DRV_NAME ;
 int IOMB_SIZE_SPC ;
 int IOMB_SIZE_SPCV ;
 int PM8001_MAX_MSIX_VEC ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 size_t chip_8001 ;
 int pci_msi_enabled () ;
 int pm8001_alloc (struct pm8001_hba_info*,struct pci_device_id const*) ;
 int * pm8001_chips ;
 int pm8001_free (struct pm8001_hba_info*) ;
 int pm8001_id ;
 int pm8001_ioremap (struct pm8001_hba_info*) ;
 int pm8001_tasklet ;
 int sprintf (int ,char*,char*,scalar_t__) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static struct pm8001_hba_info *pm8001_pci_alloc(struct pci_dev *pdev,
     const struct pci_device_id *ent,
    struct Scsi_Host *shost)

{
 struct pm8001_hba_info *pm8001_ha;
 struct sas_ha_struct *sha = SHOST_TO_SAS_HA(shost);
 int j;

 pm8001_ha = sha->lldd_ha;
 if (!pm8001_ha)
  return ((void*)0);

 pm8001_ha->pdev = pdev;
 pm8001_ha->dev = &pdev->dev;
 pm8001_ha->chip_id = ent->driver_data;
 pm8001_ha->chip = &pm8001_chips[pm8001_ha->chip_id];
 pm8001_ha->irq = pdev->irq;
 pm8001_ha->sas = sha;
 pm8001_ha->shost = shost;
 pm8001_ha->id = pm8001_id++;
 pm8001_ha->logging_level = 0x01;
 sprintf(pm8001_ha->name, "%s%d", DRV_NAME, pm8001_ha->id);

 if (pm8001_ha->chip_id != chip_8001)
  pm8001_ha->iomb_size = IOMB_SIZE_SPCV;
 else
  pm8001_ha->iomb_size = IOMB_SIZE_SPC;
 pm8001_ioremap(pm8001_ha);
 if (!pm8001_alloc(pm8001_ha, ent))
  return pm8001_ha;
 pm8001_free(pm8001_ha);
 return ((void*)0);
}
