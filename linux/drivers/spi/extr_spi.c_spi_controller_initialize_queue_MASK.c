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
struct spi_controller {int queued; int /*<<< orphan*/  dev; scalar_t__ transfer_one_message; int /*<<< orphan*/  transfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_controller*) ; 
 int FUNC2 (struct spi_controller*) ; 
 int /*<<< orphan*/  spi_queued_transfer ; 
 int FUNC3 (struct spi_controller*) ; 
 scalar_t__ spi_transfer_one_message ; 

__attribute__((used)) static int FUNC4(struct spi_controller *ctlr)
{
	int ret;

	ctlr->transfer = spi_queued_transfer;
	if (!ctlr->transfer_one_message)
		ctlr->transfer_one_message = spi_transfer_one_message;

	/* Initialize and start queue */
	ret = FUNC2(ctlr);
	if (ret) {
		FUNC0(&ctlr->dev, "problem initializing queue\n");
		goto err_init_queue;
	}
	ctlr->queued = true;
	ret = FUNC3(ctlr);
	if (ret) {
		FUNC0(&ctlr->dev, "problem starting queue\n");
		goto err_start_queue;
	}

	return 0;

err_start_queue:
	FUNC1(ctlr);
err_init_queue:
	return ret;
}