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
struct spi_message {int status; int /*<<< orphan*/ * context; struct spi_device* spi; int /*<<< orphan*/  complete; } ;
struct spi_device {int /*<<< orphan*/  statistics; struct spi_controller* controller; } ;
struct spi_controller {scalar_t__ transfer; int /*<<< orphan*/  statistics; int /*<<< orphan*/  bus_lock_spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_controller*,int) ; 
 int FUNC3 (struct spi_device*,struct spi_message*,int) ; 
 int FUNC4 (struct spi_device*,struct spi_message*) ; 
 int /*<<< orphan*/  done ; 
 int FUNC5 (struct spi_device*,struct spi_message*) ; 
 int /*<<< orphan*/  spi_complete ; 
 scalar_t__ spi_queued_transfer ; 
 int /*<<< orphan*/  spi_sync ; 
 int /*<<< orphan*/  spi_sync_immediate ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi, struct spi_message *message)
{
	FUNC0(done);
	int status;
	struct spi_controller *ctlr = spi->controller;
	unsigned long flags;

	status = FUNC4(spi, message);
	if (status != 0)
		return status;

	message->complete = spi_complete;
	message->context = &done;
	message->spi = spi;

	FUNC1(&ctlr->statistics, spi_sync);
	FUNC1(&spi->statistics, spi_sync);

	/* If we're not using the legacy transfer method then we will
	 * try to transfer in the calling context so special case.
	 * This code would be less tricky if we could remove the
	 * support for driver implemented message queues.
	 */
	if (ctlr->transfer == spi_queued_transfer) {
		FUNC6(&ctlr->bus_lock_spinlock, flags);

		FUNC8(message);

		status = FUNC3(spi, message, false);

		FUNC7(&ctlr->bus_lock_spinlock, flags);
	} else {
		status = FUNC5(spi, message);
	}

	if (status == 0) {
		/* Push out the messages in the calling context if we
		 * can.
		 */
		if (ctlr->transfer == spi_queued_transfer) {
			FUNC1(&ctlr->statistics,
						       spi_sync_immediate);
			FUNC1(&spi->statistics,
						       spi_sync_immediate);
			FUNC2(ctlr, false);
		}

		FUNC9(&done);
		status = message->status;
	}
	message->context = NULL;
	return status;
}