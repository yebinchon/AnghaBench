
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_2__ {int sli_intf; } ;
struct lpfc_hba {int hba_flag; scalar_t__ cfg_link_speed; int lmt; scalar_t__ fc_topology; int pport; TYPE_1__ sli4_hba; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EPERM ;
 int HBA_FORCED_LINK_SPEED ;
 int KERN_ERR ;
 int LMT_10Gb ;
 int LMT_16Gb ;
 int LMT_1Gb ;
 int LMT_2Gb ;
 int LMT_32Gb ;
 int LMT_4Gb ;
 int LMT_64Gb ;
 int LMT_8Gb ;
 int LOG_INIT ;
 int LPFC_LINK_SPEED_STRING ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int LPFC_USER_LINK_SPEED_10G ;
 scalar_t__ bf_get (int ,int *) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int isdigit (char const) ;
 int lpfc_issue_lip (int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,...) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,int,char*) ;
 int lpfc_shost_from_vport (int ) ;
 int lpfc_sli_intf_if_type ;
 int sscanf (char const*,char*,int*) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char*,size_t) ;

__attribute__((used)) static ssize_t
lpfc_link_speed_store(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 int val = 128;
 int nolip = 0;
 const char *val_buf = buf;
 int err;
 uint32_t prev_val, if_type;

 if_type = bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);
 if (if_type >= LPFC_SLI_INTF_IF_TYPE_2 &&
     phba->hba_flag & HBA_FORCED_LINK_SPEED)
  return -EPERM;

 if (!strncmp(buf, "nolip ", strlen("nolip "))) {
  nolip = 1;
  val_buf = &buf[strlen("nolip ")];
 }

 if (!isdigit(val_buf[0]))
  return -EINVAL;
 if (sscanf(val_buf, "%i", &val) != 1)
  return -EINVAL;

 lpfc_printf_vlog(vport, KERN_ERR, LOG_INIT,
  "3055 lpfc_link_speed changed from %d to %d %s\n",
  phba->cfg_link_speed, val, nolip ? "(nolip)" : "(lip)");

 if (((val == 134) && !(phba->lmt & LMT_1Gb)) ||
     ((val == 133) && !(phba->lmt & LMT_2Gb)) ||
     ((val == 131) && !(phba->lmt & LMT_4Gb)) ||
     ((val == 129) && !(phba->lmt & LMT_8Gb)) ||
     ((val == LPFC_USER_LINK_SPEED_10G) && !(phba->lmt & LMT_10Gb)) ||
     ((val == 135) && !(phba->lmt & LMT_16Gb)) ||
     ((val == 132) && !(phba->lmt & LMT_32Gb)) ||
     ((val == 130) && !(phba->lmt & LMT_64Gb))) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2879 lpfc_link_speed attribute cannot be set "
    "to %d. Speed is not supported by this port.\n",
    val);
  return -EINVAL;
 }
 if (val >= 135 &&
     phba->fc_topology == LPFC_TOPOLOGY_LOOP) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "3112 lpfc_link_speed attribute cannot be set "
    "to %d. Speed is not supported in loop mode.\n",
    val);
  return -EINVAL;
 }

 switch (val) {
 case 128:
 case 134:
 case 133:
 case 131:
 case 129:
 case 135:
 case 132:
 case 130:
  prev_val = phba->cfg_link_speed;
  phba->cfg_link_speed = val;
  if (nolip)
   return strlen(buf);

  err = lpfc_issue_lip(lpfc_shost_from_vport(phba->pport));
  if (err) {
   phba->cfg_link_speed = prev_val;
   return -EINVAL;
  }
  return strlen(buf);
 default:
  break;
 }

 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "0469 lpfc_link_speed attribute cannot be set to %d, "
   "allowed values are [%s]\n",
   val, LPFC_LINK_SPEED_STRING);
 return -EINVAL;

}
