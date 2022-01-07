
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int cfg_devloss_tmo; int cfg_nodev_tmo; } ;


 int EINVAL ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_DEF_DEVLOSS_TMO ;
 int LPFC_MAX_DEVLOSS_TMO ;
 int LPFC_MIN_DEVLOSS_TMO ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;

__attribute__((used)) static int
lpfc_nodev_tmo_init(struct lpfc_vport *vport, int val)
{
 if (vport->cfg_devloss_tmo != LPFC_DEF_DEVLOSS_TMO) {
  vport->cfg_nodev_tmo = vport->cfg_devloss_tmo;
  if (val != LPFC_DEF_DEVLOSS_TMO)
   lpfc_printf_vlog(vport, KERN_ERR, LOG_INIT,
      "0407 Ignoring lpfc_nodev_tmo module "
      "parameter because lpfc_devloss_tmo "
      "is set.\n");
  return 0;
 }

 if (val >= LPFC_MIN_DEVLOSS_TMO && val <= LPFC_MAX_DEVLOSS_TMO) {
  vport->cfg_nodev_tmo = val;
  vport->cfg_devloss_tmo = val;
  return 0;
 }
 lpfc_printf_vlog(vport, KERN_ERR, LOG_INIT,
    "0400 lpfc_nodev_tmo attribute cannot be set to"
    " %d, allowed range is [%d, %d]\n",
    val, LPFC_MIN_DEVLOSS_TMO, LPFC_MAX_DEVLOSS_TMO);
 vport->cfg_nodev_tmo = LPFC_DEF_DEVLOSS_TMO;
 return -EINVAL;
}
