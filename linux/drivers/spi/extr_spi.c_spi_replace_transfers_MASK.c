#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* prev; } ;
struct spi_transfer {int cs_change; scalar_t__ delay_usecs; TYPE_3__ transfer_list; } ;
struct spi_replaced_transfers {size_t inserted; TYPE_2__* replaced_after; struct spi_transfer* inserted_transfers; int /*<<< orphan*/  replaced_transfers; struct spi_transfer* extradata; int /*<<< orphan*/  release; } ;
struct spi_message {TYPE_1__* spi; int /*<<< orphan*/  transfers; } ;
typedef  int /*<<< orphan*/  spi_replaced_release_t ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/ * next; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct spi_replaced_transfers* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __spi_replace_transfers_release ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  inserted_transfers ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_transfer*,struct spi_transfer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_message*,struct spi_replaced_transfers*) ; 
 struct spi_replaced_transfers* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_replaced_transfers*) ; 
 scalar_t__ FUNC10 (struct spi_replaced_transfers*,int /*<<< orphan*/ ,size_t) ; 

struct spi_replaced_transfers *FUNC11(
	struct spi_message *msg,
	struct spi_transfer *xfer_first,
	size_t remove,
	size_t insert,
	spi_replaced_release_t release,
	size_t extradatasize,
	gfp_t gfp)
{
	struct spi_replaced_transfers *rxfer;
	struct spi_transfer *xfer;
	size_t i;

	/* allocate the structure using spi_res */
	rxfer = FUNC8(msg->spi, __spi_replace_transfers_release,
			      FUNC10(rxfer, inserted_transfers, insert)
			      + extradatasize,
			      gfp);
	if (!rxfer)
		return FUNC0(-ENOMEM);

	/* the release code to invoke before running the generic release */
	rxfer->release = release;

	/* assign extradata */
	if (extradatasize)
		rxfer->extradata =
			&rxfer->inserted_transfers[insert];

	/* init the replaced_transfers list */
	FUNC1(&rxfer->replaced_transfers);

	/* assign the list_entry after which we should reinsert
	 * the @replaced_transfers - it may be spi_message.messages!
	 */
	rxfer->replaced_after = xfer_first->transfer_list.prev;

	/* remove the requested number of transfers */
	for (i = 0; i < remove; i++) {
		/* if the entry after replaced_after it is msg->transfers
		 * then we have been requested to remove more transfers
		 * than are in the list
		 */
		if (rxfer->replaced_after->next == &msg->transfers) {
			FUNC2(&msg->spi->dev,
				"requested to remove more spi_transfers than are available\n");
			/* insert replaced transfers back into the message */
			FUNC5(&rxfer->replaced_transfers,
				    rxfer->replaced_after);

			/* free the spi_replace_transfer structure */
			FUNC9(rxfer);

			/* and return with an error */
			return FUNC0(-EINVAL);
		}

		/* remove the entry after replaced_after from list of
		 * transfers and add it to list of replaced_transfers
		 */
		FUNC4(rxfer->replaced_after->next,
			       &rxfer->replaced_transfers);
	}

	/* create copy of the given xfer with identical settings
	 * based on the first transfer to get removed
	 */
	for (i = 0; i < insert; i++) {
		/* we need to run in reverse order */
		xfer = &rxfer->inserted_transfers[insert - 1 - i];

		/* copy all spi_transfer data */
		FUNC6(xfer, xfer_first, sizeof(*xfer));

		/* add to list */
		FUNC3(&xfer->transfer_list, rxfer->replaced_after);

		/* clear cs_change and delay_usecs for all but the last */
		if (i) {
			xfer->cs_change = false;
			xfer->delay_usecs = 0;
		}
	}

	/* set up inserted */
	rxfer->inserted = insert;

	/* and register it with spi_res/spi_message */
	FUNC7(msg, rxfer);

	return rxfer;
}