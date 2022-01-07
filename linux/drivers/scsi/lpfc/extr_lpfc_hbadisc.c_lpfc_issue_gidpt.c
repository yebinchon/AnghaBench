
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int gidft_inp; } ;


 int GID_PT_N_PORT ;
 int KERN_ERR ;
 int LOG_SLI ;
 int SLI_CTNS_GID_PT ;
 scalar_t__ lpfc_ns_cmd (struct lpfc_vport*,int ,int ,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,char*,int ,char*) ;

int
lpfc_issue_gidpt(struct lpfc_vport *vport)
{

 if (lpfc_ns_cmd(vport, SLI_CTNS_GID_PT, 0, GID_PT_N_PORT)) {



  lpfc_printf_vlog(vport, KERN_ERR, LOG_SLI,
     "0606 %s Port TYPE %x %s\n",
     "Failed to issue GID_PT to ",
     GID_PT_N_PORT,
     "Finishing discovery.");
  return 0;
 }
 vport->gidft_inp++;
 return 1;
}
