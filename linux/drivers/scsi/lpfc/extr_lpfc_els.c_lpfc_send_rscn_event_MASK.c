#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_rscn_event_header {int payload_length; int /*<<< orphan*/  rscn_payload; int /*<<< orphan*/  event_type; } ;
struct lpfc_iocbq {scalar_t__ context2; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ELS_CMD_MASK ; 
 int /*<<< orphan*/  FC_REG_RSCN_EVENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LPFC_NL_VENDOR_ID ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_rscn_event_header*) ; 
 struct lpfc_rscn_event_header* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct Scsi_Host* FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC8(struct lpfc_vport *vport,
		struct lpfc_iocbq *cmdiocb)
{
	struct lpfc_dmabuf *pcmd;
	struct Scsi_Host *shost = FUNC6(vport);
	uint32_t *payload_ptr;
	uint32_t payload_len;
	struct lpfc_rscn_event_header *rscn_event_data;

	pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
	payload_ptr = (uint32_t *) pcmd->virt;
	payload_len = FUNC0(*payload_ptr & ~ELS_CMD_MASK);

	rscn_event_data = FUNC4(sizeof(struct lpfc_rscn_event_header) +
		payload_len, GFP_KERNEL);
	if (!rscn_event_data) {
		FUNC5(vport, KERN_ERR, LOG_ELS,
			"0147 Failed to allocate memory for RSCN event\n");
		return;
	}
	rscn_event_data->event_type = FC_REG_RSCN_EVENT;
	rscn_event_data->payload_length = payload_len;
	FUNC7(rscn_event_data->rscn_payload, payload_ptr,
		payload_len);

	FUNC2(shost,
		FUNC1(),
		sizeof(struct lpfc_rscn_event_header) + payload_len,
		(char *)rscn_event_data,
		LPFC_NL_VENDOR_ID);

	FUNC3(rscn_event_data);
}