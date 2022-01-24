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
struct qeth_cmd_buffer {scalar_t__ length; int /*<<< orphan*/  (* callback ) (struct qeth_card*,struct qeth_cmd_buffer*,scalar_t__) ;} ;
struct qeth_channel {struct ccw_device* ccwdev; int /*<<< orphan*/  state; int /*<<< orphan*/  irq_pending; } ;
struct qeth_card {int read_or_write_problem; int /*<<< orphan*/  wait_q; struct qeth_channel data; struct qeth_channel write; struct qeth_channel read; } ;
struct TYPE_9__ {int fctl; int cstat; int dstat; scalar_t__ count; } ;
struct TYPE_10__ {TYPE_4__ cmd; } ;
struct TYPE_6__ {scalar_t__ cons; } ;
struct TYPE_7__ {TYPE_1__ erw; } ;
struct TYPE_8__ {TYPE_2__ esw0; } ;
struct irb {TYPE_5__ scsw; struct irb* ecw; TYPE_3__ esw; } ;
struct ccwgroup_device {int /*<<< orphan*/  dev; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  CH_STATE_HALTED ; 
 int /*<<< orphan*/  CH_STATE_STOPPED ; 
 int DEV_STAT_UNIT_CHECK ; 
 int DEV_STAT_UNIT_EXCEP ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 unsigned long QETH_CLEAR_CHANNEL_PARM ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 unsigned long QETH_HALT_CHANNEL_PARM ; 
 int SCSW_FCTL_CLEAR_FUNC ; 
 int SCSW_FCTL_HALT_FUNC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct irb*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_cmd_buffer*,int) ; 
 int FUNC9 (struct qeth_card*,struct ccw_device*,struct irb*) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*) ; 
 int FUNC11 (struct qeth_card*,struct ccw_device*,struct irb*) ; 
 scalar_t__ FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC14 (struct qeth_card*,struct qeth_cmd_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct ccw_device *cdev, unsigned long intparm,
		struct irb *irb)
{
	int rc;
	int cstat, dstat;
	struct qeth_cmd_buffer *iob = NULL;
	struct ccwgroup_device *gdev;
	struct qeth_channel *channel;
	struct qeth_card *card;

	/* while we hold the ccwdev lock, this stays valid: */
	gdev = FUNC5(&cdev->dev);
	card = FUNC5(&gdev->dev);
	if (!card)
		return;

	FUNC1(card, 5, "irq");

	if (card->read.ccwdev == cdev) {
		channel = &card->read;
		FUNC1(card, 5, "read");
	} else if (card->write.ccwdev == cdev) {
		channel = &card->write;
		FUNC1(card, 5, "write");
	} else {
		channel = &card->data;
		FUNC1(card, 5, "data");
	}

	if (FUNC12(intparm))
		iob = (struct qeth_cmd_buffer *) FUNC3((addr_t)intparm);

	rc = FUNC9(card, cdev, irb);
	if (rc) {
		/* IO was terminated, free its resources. */
		if (iob)
			FUNC8(iob, rc);
		FUNC4(&channel->irq_pending, 0);
		FUNC15(&card->wait_q);
		return;
	}

	FUNC4(&channel->irq_pending, 0);

	if (irb->scsw.cmd.fctl & (SCSW_FCTL_CLEAR_FUNC))
		channel->state = CH_STATE_STOPPED;

	if (irb->scsw.cmd.fctl & (SCSW_FCTL_HALT_FUNC))
		channel->state = CH_STATE_HALTED;

	if (intparm == QETH_CLEAR_CHANNEL_PARM) {
		FUNC1(card, 6, "clrchpar");
		/* we don't have to handle this further */
		intparm = 0;
	}
	if (intparm == QETH_HALT_CHANNEL_PARM) {
		FUNC1(card, 6, "hltchpar");
		/* we don't have to handle this further */
		intparm = 0;
	}

	cstat = irb->scsw.cmd.cstat;
	dstat = irb->scsw.cmd.dstat;

	if ((dstat & DEV_STAT_UNIT_EXCEP) ||
	    (dstat & DEV_STAT_UNIT_CHECK) ||
	    (cstat)) {
		if (irb->esw.esw0.erw.cons) {
			FUNC6(&channel->ccwdev->dev,
				"The qeth device driver failed to recover "
				"an error on the device\n");
			FUNC2(2, "sense data available on channel %x: cstat %#X dstat %#X\n",
					 FUNC0(channel->ccwdev), cstat,
					 dstat);
			FUNC7(KERN_WARNING, "qeth: irb ",
				DUMP_PREFIX_OFFSET, 16, 1, irb, 32, 1);
			FUNC7(KERN_WARNING, "qeth: sense data ",
				DUMP_PREFIX_OFFSET, 16, 1, irb->ecw, 32, 1);
		}

		rc = FUNC11(card, cdev, irb);
		if (rc) {
			card->read_or_write_problem = 1;
			if (iob)
				FUNC8(iob, rc);
			FUNC10(card);
			FUNC13(card);
			goto out;
		}
	}

	if (iob) {
		/* sanity check: */
		if (irb->scsw.cmd.count > iob->length) {
			FUNC8(iob, -EIO);
			goto out;
		}
		if (iob->callback)
			iob->callback(card, iob,
				      iob->length - irb->scsw.cmd.count);
	}

out:
	FUNC15(&card->wait_q);
	return;
}