
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpsa_scsi_dev_t {int volume_offline; int lun; int target; int bus; } ;
struct ctlr_info {TYPE_2__* scsi_host; TYPE_1__* pdev; } ;
struct TYPE_4__ {int host_no; } ;
struct TYPE_3__ {int dev; } ;
 int HPSA_VPD_LV_STATUS_UNSUPPORTED ;
 int dev_info (int *,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void hpsa_show_volume_status(struct ctlr_info *h,
 struct hpsa_scsi_dev_t *sd)
{
 if (sd->volume_offline == HPSA_VPD_LV_STATUS_UNSUPPORTED)
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume status is not available through vital product data pages.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
 switch (sd->volume_offline) {
 case 136:
  break;
 case 129:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is undergoing background erase process.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 case 137:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is waiting for transforming volume.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 case 128:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is undergoing rapid parity init.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 case 133:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is queued for rapid parity initialization process.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 case 138:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is encrypted and cannot be accessed because key is not present.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 case 132:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is not encrypted and cannot be accessed because controller is in encryption-only mode.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 case 131:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is undergoing encryption process.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 case 130:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is undergoing encryption re-keying process.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 case 139:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is encrypted and cannot be accessed because controller does not have encryption enabled.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 case 135:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is pending migration to encrypted state, but process has not started.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 case 134:
  dev_info(&h->pdev->dev,
   "C%d:B%d:T%d:L%d Volume is encrypted and is pending encryption rekeying.\n",
   h->scsi_host->host_no,
   sd->bus, sd->target, sd->lun);
  break;
 }
}
