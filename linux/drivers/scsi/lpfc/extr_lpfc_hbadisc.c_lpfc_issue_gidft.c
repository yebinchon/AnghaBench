
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {scalar_t__ cfg_enable_fc4_type; scalar_t__ gidft_inp; } ;


 int FC_TYPE_FCP ;
 int FC_TYPE_NVME ;
 int KERN_ERR ;
 int LOG_SLI ;
 scalar_t__ LPFC_ENABLE_BOTH ;
 scalar_t__ LPFC_ENABLE_FCP ;
 scalar_t__ LPFC_ENABLE_NVME ;
 int SLI_CTNS_GID_FT ;
 int SLI_CTPT_FCP ;
 int SLI_CTPT_NVME ;
 scalar_t__ lpfc_ns_cmd (struct lpfc_vport*,int ,int ,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,char*,int ,char*,...) ;

int
lpfc_issue_gidft(struct lpfc_vport *vport)
{

 if ((vport->cfg_enable_fc4_type == LPFC_ENABLE_BOTH) ||
     (vport->cfg_enable_fc4_type == LPFC_ENABLE_FCP)) {
  if (lpfc_ns_cmd(vport, SLI_CTNS_GID_FT, 0, SLI_CTPT_FCP)) {



   lpfc_printf_vlog(vport, KERN_ERR, LOG_SLI,
      "0604 %s FC TYPE %x %s\n",
      "Failed to issue GID_FT to ",
      FC_TYPE_FCP,
      "Finishing discovery.");
   return 0;
  }
  vport->gidft_inp++;
 }

 if ((vport->cfg_enable_fc4_type == LPFC_ENABLE_BOTH) ||
     (vport->cfg_enable_fc4_type == LPFC_ENABLE_NVME)) {
  if (lpfc_ns_cmd(vport, SLI_CTNS_GID_FT, 0, SLI_CTPT_NVME)) {



   lpfc_printf_vlog(vport, KERN_ERR, LOG_SLI,
      "0605 %s FC_TYPE %x %s %d\n",
      "Failed to issue GID_FT to ",
      FC_TYPE_NVME,
      "Finishing discovery: gidftinp ",
      vport->gidft_inp);
   if (vport->gidft_inp == 0)
    return 0;
  } else
   vport->gidft_inp++;
 }
 return vport->gidft_inp;
}
