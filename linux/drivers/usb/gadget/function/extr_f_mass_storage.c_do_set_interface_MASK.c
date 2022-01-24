#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct fsg_dev {int bulk_in_enabled; int bulk_out_enabled; TYPE_1__* bulk_out; TYPE_1__* bulk_in; int /*<<< orphan*/  atomic_bitflags; int /*<<< orphan*/  function; } ;
struct fsg_common {int running; int fsg_num_buffers; TYPE_8__** luns; struct fsg_buffhd* buffhds; int /*<<< orphan*/  bulk_out_maxpacket; int /*<<< orphan*/  gadget; struct fsg_dev* fsg; int /*<<< orphan*/  fsg_wait; } ;
struct fsg_buffhd {TYPE_2__* outreq; TYPE_2__* inreq; int /*<<< orphan*/  buf; } ;
struct TYPE_11__ {int /*<<< orphan*/  unit_attention_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  complete; struct fsg_buffhd* context; int /*<<< orphan*/  buf; } ;
struct TYPE_9__ {int /*<<< orphan*/  desc; struct fsg_common* driver_data; } ;

/* Variables and functions */
 int FUNC0 (TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC1 (struct fsg_common*,char*) ; 
 int /*<<< orphan*/  IGNORE_BULK_OUT ; 
 int /*<<< orphan*/  SS_RESET_OCCURRED ; 
 int FUNC2 (struct fsg_common*,TYPE_1__*,TYPE_2__**) ; 
 int /*<<< orphan*/  bulk_in_complete ; 
 int /*<<< orphan*/  bulk_out_complete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct fsg_common *common, struct fsg_dev *new_fsg)
{
	struct fsg_dev *fsg;
	int i, rc = 0;

	if (common->running)
		FUNC1(common, "reset interface\n");

reset:
	/* Deallocate the requests */
	if (common->fsg) {
		fsg = common->fsg;

		for (i = 0; i < common->fsg_num_buffers; ++i) {
			struct fsg_buffhd *bh = &common->buffhds[i];

			if (bh->inreq) {
				FUNC8(fsg->bulk_in, bh->inreq);
				bh->inreq = NULL;
			}
			if (bh->outreq) {
				FUNC8(fsg->bulk_out, bh->outreq);
				bh->outreq = NULL;
			}
		}

		/* Disable the endpoints */
		if (fsg->bulk_in_enabled) {
			FUNC6(fsg->bulk_in);
			fsg->bulk_in_enabled = 0;
		}
		if (fsg->bulk_out_enabled) {
			FUNC6(fsg->bulk_out);
			fsg->bulk_out_enabled = 0;
		}

		common->fsg = NULL;
		FUNC9(&common->fsg_wait);
	}

	common->running = 0;
	if (!new_fsg || rc)
		return rc;

	common->fsg = new_fsg;
	fsg = common->fsg;

	/* Enable the endpoints */
	rc = FUNC4(common->gadget, &(fsg->function), fsg->bulk_in);
	if (rc)
		goto reset;
	rc = FUNC7(fsg->bulk_in);
	if (rc)
		goto reset;
	fsg->bulk_in->driver_data = common;
	fsg->bulk_in_enabled = 1;

	rc = FUNC4(common->gadget, &(fsg->function),
				fsg->bulk_out);
	if (rc)
		goto reset;
	rc = FUNC7(fsg->bulk_out);
	if (rc)
		goto reset;
	fsg->bulk_out->driver_data = common;
	fsg->bulk_out_enabled = 1;
	common->bulk_out_maxpacket = FUNC5(fsg->bulk_out->desc);
	FUNC3(IGNORE_BULK_OUT, &fsg->atomic_bitflags);

	/* Allocate the requests */
	for (i = 0; i < common->fsg_num_buffers; ++i) {
		struct fsg_buffhd	*bh = &common->buffhds[i];

		rc = FUNC2(common, fsg->bulk_in, &bh->inreq);
		if (rc)
			goto reset;
		rc = FUNC2(common, fsg->bulk_out, &bh->outreq);
		if (rc)
			goto reset;
		bh->inreq->buf = bh->outreq->buf = bh->buf;
		bh->inreq->context = bh->outreq->context = bh;
		bh->inreq->complete = bulk_in_complete;
		bh->outreq->complete = bulk_out_complete;
	}

	common->running = 1;
	for (i = 0; i < FUNC0(common->luns); ++i)
		if (common->luns[i])
			common->luns[i]->unit_attention_data =
				SS_RESET_OCCURRED;
	return rc;
}