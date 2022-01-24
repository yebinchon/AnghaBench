#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int length; int response_code; } ;
struct TYPE_5__ {int length; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int event_id; int dbs; int /*<<< orphan*/  data_id; int /*<<< orphan*/  event_qual; TYPE_1__ hdr; } ;
struct sdias_sccb {TYPE_3__ hdr; int /*<<< orphan*/  callback; int /*<<< orphan*/  status; int /*<<< orphan*/  command; struct sdias_sccb* sccb; TYPE_2__ evbuf; } ;
struct sdias_evbuf {int dummy; } ;
struct sclp_req {TYPE_3__ hdr; int /*<<< orphan*/  callback; int /*<<< orphan*/  status; int /*<<< orphan*/  command; struct sclp_req* sccb; TYPE_2__ evbuf; } ;
typedef  int /*<<< orphan*/  request ;
struct TYPE_8__ {int event_status; int blk_cnt; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EVTYP_SDIAS ; 
 int /*<<< orphan*/  SCLP_CMDW_WRITE_EVENT_DATA ; 
 int /*<<< orphan*/  SCLP_REQ_FILLED ; 
 int /*<<< orphan*/  SDIAS_DI_FCP_DUMP ; 
 int /*<<< orphan*/  SDIAS_EQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdias_sccb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct sdias_sccb* sclp_sdias_sccb ; 
 int /*<<< orphan*/  sdias_callback ; 
 TYPE_4__ sdias_evbuf ; 
 int /*<<< orphan*/  sdias_mutex ; 
 int FUNC5 (struct sdias_sccb*) ; 

int FUNC6(void)
{
	struct sdias_sccb *sccb = sclp_sdias_sccb;
	struct sclp_req request;
	int rc;

	FUNC2(&sdias_mutex);

	FUNC1(sccb, 0, sizeof(*sccb));
	FUNC1(&request, 0, sizeof(request));

	sccb->hdr.length = sizeof(*sccb);
	sccb->evbuf.hdr.length = sizeof(struct sdias_evbuf);
	sccb->evbuf.hdr.type = EVTYP_SDIAS;
	sccb->evbuf.event_qual = SDIAS_EQ_SIZE;
	sccb->evbuf.data_id = SDIAS_DI_FCP_DUMP;
	sccb->evbuf.event_id = 4712;
	sccb->evbuf.dbs = 1;

	request.sccb = sccb;
	request.command = SCLP_CMDW_WRITE_EVENT_DATA;
	request.status = SCLP_REQ_FILLED;
	request.callback = sdias_callback;

	rc = FUNC5(&request);
	if (rc) {
		FUNC4("sclp_send failed for get_nr_blocks\n");
		goto out;
	}
	if (sccb->hdr.response_code != 0x0020) {
		FUNC0("send failed: %x\n", sccb->hdr.response_code);
		rc = -EIO;
		goto out;
	}

	switch (sdias_evbuf.event_status) {
		case 0:
			rc = sdias_evbuf.blk_cnt;
			break;
		default:
			FUNC4("SCLP error: %x\n", sdias_evbuf.event_status);
			rc = -EIO;
			goto out;
	}
	FUNC0("%i blocks\n", rc);
out:
	FUNC3(&sdias_mutex);
	return rc;
}