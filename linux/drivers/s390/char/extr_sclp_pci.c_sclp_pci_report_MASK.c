#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct zpci_report_error_header {scalar_t__ length; int /*<<< orphan*/  data; int /*<<< orphan*/  action; } ;
struct sclp_req {scalar_t__ status; struct err_notify_sccb* sccb; int /*<<< orphan*/  command; int /*<<< orphan*/  callback; int /*<<< orphan*/ * callback_data; } ;
struct TYPE_9__ {int response_code; scalar_t__ length; } ;
struct TYPE_7__ {scalar_t__ length; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; void* fid; void* fh; int /*<<< orphan*/  atype; int /*<<< orphan*/  action; TYPE_1__ header; } ;
struct err_notify_sccb {TYPE_3__ header; TYPE_2__ evbuf; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_10__ {int sclp_receive_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EVTYP_ERRNOTIFY ; 
 int EVTYP_ERRNOTIFY_MASK ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  SCLP_ATYPE_PCI ; 
 int /*<<< orphan*/  SCLP_CMDW_WRITE_EVENT_DATA ; 
 scalar_t__ SCLP_REQ_DONE ; 
 scalar_t__ SCLP_REQ_FILLED ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sclp_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int FUNC8 (struct sclp_req*) ; 
 int /*<<< orphan*/  sclp_pci_callback ; 
 int FUNC9 (struct zpci_report_error_header*) ; 
 TYPE_4__ sclp_pci_event ; 
 int /*<<< orphan*/  sclp_pci_mutex ; 
 int FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct zpci_report_error_header *report, u32 fh, u32 fid)
{
	FUNC0(completion);
	struct err_notify_sccb *sccb;
	struct sclp_req req;
	int ret;

	ret = FUNC9(report);
	if (ret)
		return ret;

	FUNC5(&sclp_pci_mutex);
	ret = FUNC10(&sclp_pci_event);
	if (ret)
		goto out_unlock;

	if (!(sclp_pci_event.sclp_receive_mask & EVTYP_ERRNOTIFY_MASK)) {
		ret = -EOPNOTSUPP;
		goto out_unregister;
	}

	sccb = (void *) FUNC2(GFP_KERNEL | GFP_DMA);
	if (!sccb) {
		ret = -ENOMEM;
		goto out_unregister;
	}

	FUNC4(&req, 0, sizeof(req));
	req.callback_data = &completion;
	req.callback = sclp_pci_callback;
	req.command = SCLP_CMDW_WRITE_EVENT_DATA;
	req.status = SCLP_REQ_FILLED;
	req.sccb = sccb;

	sccb->evbuf.header.length = sizeof(sccb->evbuf) + report->length;
	sccb->evbuf.header.type = EVTYP_ERRNOTIFY;
	sccb->header.length = sizeof(sccb->header) + sccb->evbuf.header.length;

	sccb->evbuf.action = report->action;
	sccb->evbuf.atype = SCLP_ATYPE_PCI;
	sccb->evbuf.fh = fh;
	sccb->evbuf.fid = fid;

	FUNC3(sccb->evbuf.data, report->data, report->length);

	ret = FUNC8(&req);
	if (ret)
		goto out_free_req;

	FUNC12(&completion);
	if (req.status != SCLP_REQ_DONE) {
		FUNC7("request failed (status=0x%02x)\n",
			req.status);
		ret = -EIO;
		goto out_free_req;
	}

	if (sccb->header.response_code != 0x0020) {
		FUNC7("request failed with response code 0x%x\n",
			sccb->header.response_code);
		ret = -EIO;
	}

out_free_req:
	FUNC1((unsigned long) sccb);
out_unregister:
	FUNC11(&sclp_pci_event);
out_unlock:
	FUNC6(&sclp_pci_mutex);
	return ret;
}