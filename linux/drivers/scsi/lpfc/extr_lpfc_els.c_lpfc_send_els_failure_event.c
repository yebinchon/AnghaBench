
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int lsRjtRsnCodeExp; int lsRjtRsnCode; } ;
struct TYPE_9__ {TYPE_3__ b; int lsRjtError; } ;
struct ls_rjt {TYPE_4__ un; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_nodename; int nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_6__ {int wwnn; int wwpn; int subcategory; int event_type; } ;
struct lpfc_lsrjt_event {int explanation; int reason_code; int command; TYPE_1__ header; } ;
struct TYPE_7__ {int * ulpWord; } ;
struct TYPE_10__ {scalar_t__ ulpStatus; TYPE_2__ un; } ;
struct lpfc_iocbq {TYPE_5__ iocb; scalar_t__ context2; struct lpfc_nodelist* context1; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_fabric_event_header {int wwnn; int wwpn; int subcategory; int event_type; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int dummy; } ;
typedef int lsrjt_event ;
typedef int fabric_event ;


 int FC_REG_ELS_EVENT ;
 int FC_REG_FABRIC_EVENT ;
 scalar_t__ IOSTAT_FABRIC_BSY ;
 scalar_t__ IOSTAT_LS_RJT ;
 scalar_t__ IOSTAT_NPORT_BSY ;
 int LPFC_EVENT_FABRIC_BUSY ;
 int LPFC_EVENT_LSRJT_RCV ;
 int LPFC_EVENT_PORT_BUSY ;
 int LPFC_NL_VENDOR_ID ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int be32_to_cpu (int ) ;
 int fc_get_event_number () ;
 int fc_host_post_vendor_event (struct Scsi_Host*,int ,int,char*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int memcpy (int ,int *,int) ;

void
lpfc_send_els_failure_event(struct lpfc_hba *phba,
   struct lpfc_iocbq *cmdiocbp,
   struct lpfc_iocbq *rspiocbp)
{
 struct lpfc_vport *vport = cmdiocbp->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_lsrjt_event lsrjt_event;
 struct lpfc_fabric_event_header fabric_event;
 struct ls_rjt stat;
 struct lpfc_nodelist *ndlp;
 uint32_t *pcmd;

 ndlp = cmdiocbp->context1;
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp))
  return;

 if (rspiocbp->iocb.ulpStatus == IOSTAT_LS_RJT) {
  lsrjt_event.header.event_type = FC_REG_ELS_EVENT;
  lsrjt_event.header.subcategory = LPFC_EVENT_LSRJT_RCV;
  memcpy(lsrjt_event.header.wwpn, &ndlp->nlp_portname,
   sizeof(struct lpfc_name));
  memcpy(lsrjt_event.header.wwnn, &ndlp->nlp_nodename,
   sizeof(struct lpfc_name));
  pcmd = (uint32_t *) (((struct lpfc_dmabuf *)
   cmdiocbp->context2)->virt);
  lsrjt_event.command = (pcmd != ((void*)0)) ? *pcmd : 0;
  stat.un.lsRjtError = be32_to_cpu(rspiocbp->iocb.un.ulpWord[4]);
  lsrjt_event.reason_code = stat.un.b.lsRjtRsnCode;
  lsrjt_event.explanation = stat.un.b.lsRjtRsnCodeExp;
  fc_host_post_vendor_event(shost,
   fc_get_event_number(),
   sizeof(lsrjt_event),
   (char *)&lsrjt_event,
   LPFC_NL_VENDOR_ID);
  return;
 }
 if ((rspiocbp->iocb.ulpStatus == IOSTAT_NPORT_BSY) ||
  (rspiocbp->iocb.ulpStatus == IOSTAT_FABRIC_BSY)) {
  fabric_event.event_type = FC_REG_FABRIC_EVENT;
  if (rspiocbp->iocb.ulpStatus == IOSTAT_NPORT_BSY)
   fabric_event.subcategory = LPFC_EVENT_PORT_BUSY;
  else
   fabric_event.subcategory = LPFC_EVENT_FABRIC_BUSY;
  memcpy(fabric_event.wwpn, &ndlp->nlp_portname,
   sizeof(struct lpfc_name));
  memcpy(fabric_event.wwnn, &ndlp->nlp_nodename,
   sizeof(struct lpfc_name));
  fc_host_post_vendor_event(shost,
   fc_get_event_number(),
   sizeof(fabric_event),
   (char *)&fabric_event,
   LPFC_NL_VENDOR_ID);
  return;
 }

}
