
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shost; } ;
struct sas_ha_struct {int num_phys; struct asd_sas_port** sas_port; struct asd_sas_phy** sas_phy; TYPE_1__ core; int * sas_addr; int lldd_module; int dev; int sas_ha_name; struct hisi_hba* lldd_ha; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hisi_sas_hw {int dummy; } ;
struct hisi_hba {int n_phy; TYPE_4__* hw; TYPE_3__* port; TYPE_2__* phy; int shost; int * sas_addr; int dev; } ;
struct asd_sas_port {int dummy; } ;
struct asd_sas_phy {int dummy; } ;
struct Scsi_Host {int max_channel; int max_cmd_len; void* cmd_per_lun; void* can_queue; int max_lun; int max_id; int transportt; } ;
struct TYPE_8__ {int (* hw_init ) (struct hisi_hba*) ;scalar_t__ slot_index_alloc; } ;
struct TYPE_7__ {struct asd_sas_port sas_port; } ;
struct TYPE_6__ {struct asd_sas_phy sas_phy; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* HISI_SAS_MAX_COMMANDS ;
 int HISI_SAS_MAX_DEVICES ;
 void* HISI_SAS_UNRESERVED_IPTT ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 int THIS_MODULE ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 int hisi_sas_free (struct hisi_hba*) ;
 struct Scsi_Host* hisi_sas_shost_alloc (struct platform_device*,struct hisi_sas_hw const*) ;
 int hisi_sas_stt ;
 int platform_set_drvdata (struct platform_device*,struct sas_ha_struct*) ;
 int sas_register_ha (struct sas_ha_struct*) ;
 int scsi_add_host (struct Scsi_Host*,struct device*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 struct hisi_hba* shost_priv (struct Scsi_Host*) ;
 int stub1 (struct hisi_hba*) ;

int hisi_sas_probe(struct platform_device *pdev,
     const struct hisi_sas_hw *hw)
{
 struct Scsi_Host *shost;
 struct hisi_hba *hisi_hba;
 struct device *dev = &pdev->dev;
 struct asd_sas_phy **arr_phy;
 struct asd_sas_port **arr_port;
 struct sas_ha_struct *sha;
 int rc, phy_nr, port_nr, i;

 shost = hisi_sas_shost_alloc(pdev, hw);
 if (!shost)
  return -ENOMEM;

 sha = SHOST_TO_SAS_HA(shost);
 hisi_hba = shost_priv(shost);
 platform_set_drvdata(pdev, sha);

 phy_nr = port_nr = hisi_hba->n_phy;

 arr_phy = devm_kcalloc(dev, phy_nr, sizeof(void *), GFP_KERNEL);
 arr_port = devm_kcalloc(dev, port_nr, sizeof(void *), GFP_KERNEL);
 if (!arr_phy || !arr_port) {
  rc = -ENOMEM;
  goto err_out_ha;
 }

 sha->sas_phy = arr_phy;
 sha->sas_port = arr_port;
 sha->lldd_ha = hisi_hba;

 shost->transportt = hisi_sas_stt;
 shost->max_id = HISI_SAS_MAX_DEVICES;
 shost->max_lun = ~0;
 shost->max_channel = 1;
 shost->max_cmd_len = 16;
 if (hisi_hba->hw->slot_index_alloc) {
  shost->can_queue = HISI_SAS_MAX_COMMANDS;
  shost->cmd_per_lun = HISI_SAS_MAX_COMMANDS;
 } else {
  shost->can_queue = HISI_SAS_UNRESERVED_IPTT;
  shost->cmd_per_lun = HISI_SAS_UNRESERVED_IPTT;
 }

 sha->sas_ha_name = DRV_NAME;
 sha->dev = hisi_hba->dev;
 sha->lldd_module = THIS_MODULE;
 sha->sas_addr = &hisi_hba->sas_addr[0];
 sha->num_phys = hisi_hba->n_phy;
 sha->core.shost = hisi_hba->shost;

 for (i = 0; i < hisi_hba->n_phy; i++) {
  sha->sas_phy[i] = &hisi_hba->phy[i].sas_phy;
  sha->sas_port[i] = &hisi_hba->port[i].sas_port;
 }

 rc = scsi_add_host(shost, &pdev->dev);
 if (rc)
  goto err_out_ha;

 rc = sas_register_ha(sha);
 if (rc)
  goto err_out_register_ha;

 rc = hisi_hba->hw->hw_init(hisi_hba);
 if (rc)
  goto err_out_register_ha;

 scsi_scan_host(shost);

 return 0;

err_out_register_ha:
 scsi_remove_host(shost);
err_out_ha:
 hisi_sas_free(hisi_hba);
 scsi_host_put(shost);
 return rc;
}
