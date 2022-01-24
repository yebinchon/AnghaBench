#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  lsRjtRsnCodeExp; int /*<<< orphan*/  lsRjtRsnCode; } ;
struct TYPE_9__ {TYPE_3__ b; int /*<<< orphan*/  lsRjtError; } ;
struct ls_rjt {TYPE_4__ un; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_nodename; int /*<<< orphan*/  nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  wwnn; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  subcategory; int /*<<< orphan*/  event_type; } ;
struct lpfc_lsrjt_event {int /*<<< orphan*/  explanation; int /*<<< orphan*/  reason_code; int /*<<< orphan*/  command; TYPE_1__ header; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ulpWord; } ;
struct TYPE_10__ {scalar_t__ ulpStatus; TYPE_2__ un; } ;
struct lpfc_iocbq {TYPE_5__ iocb; scalar_t__ context2; struct lpfc_nodelist* context1; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_fabric_event_header {int /*<<< orphan*/  wwnn; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  subcategory; int /*<<< orphan*/  event_type; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  lsrjt_event ;
typedef  int /*<<< orphan*/  fabric_event ;

/* Variables and functions */
 int /*<<< orphan*/  FC_REG_ELS_EVENT ; 
 int /*<<< orphan*/  FC_REG_FABRIC_EVENT ; 
 scalar_t__ IOSTAT_FABRIC_BSY ; 
 scalar_t__ IOSTAT_LS_RJT ; 
 scalar_t__ IOSTAT_NPORT_BSY ; 
 int /*<<< orphan*/  LPFC_EVENT_FABRIC_BUSY ; 
 int /*<<< orphan*/  LPFC_EVENT_LSRJT_RCV ; 
 int /*<<< orphan*/  LPFC_EVENT_PORT_BUSY ; 
 int /*<<< orphan*/  LPFC_NL_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void
FUNC6(struct lpfc_hba *phba,
			struct lpfc_iocbq *cmdiocbp,
			struct lpfc_iocbq *rspiocbp)
{
	struct lpfc_vport *vport = cmdiocbp->vport;
	struct Scsi_Host *shost = FUNC4(vport);
	struct lpfc_lsrjt_event lsrjt_event;
	struct lpfc_fabric_event_header fabric_event;
	struct ls_rjt stat;
	struct lpfc_nodelist *ndlp;
	uint32_t *pcmd;

	ndlp = cmdiocbp->context1;
	if (!ndlp || !FUNC0(ndlp))
		return;

	if (rspiocbp->iocb.ulpStatus == IOSTAT_LS_RJT) {
		lsrjt_event.header.event_type = FC_REG_ELS_EVENT;
		lsrjt_event.header.subcategory = LPFC_EVENT_LSRJT_RCV;
		FUNC5(lsrjt_event.header.wwpn, &ndlp->nlp_portname,
			sizeof(struct lpfc_name));
		FUNC5(lsrjt_event.header.wwnn, &ndlp->nlp_nodename,
			sizeof(struct lpfc_name));
		pcmd = (uint32_t *) (((struct lpfc_dmabuf *)
			cmdiocbp->context2)->virt);
		lsrjt_event.command = (pcmd != NULL) ? *pcmd : 0;
		stat.un.lsRjtError = FUNC1(rspiocbp->iocb.un.ulpWord[4]);
		lsrjt_event.reason_code = stat.un.b.lsRjtRsnCode;
		lsrjt_event.explanation = stat.un.b.lsRjtRsnCodeExp;
		FUNC3(shost,
			FUNC2(),
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
		FUNC5(fabric_event.wwpn, &ndlp->nlp_portname,
			sizeof(struct lpfc_name));
		FUNC5(fabric_event.wwnn, &ndlp->nlp_nodename,
			sizeof(struct lpfc_name));
		FUNC3(shost,
			FUNC2(),
			sizeof(fabric_event),
			(char *)&fabric_event,
			LPFC_NL_VENDOR_ID);
		return;
	}

}