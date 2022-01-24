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
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {scalar_t__ opcode; int /*<<< orphan*/  error; } ;
struct gb_sdio_host {int xfer_stop; int /*<<< orphan*/  lock; struct mmc_request* mrq; int /*<<< orphan*/  mrqwork; int /*<<< orphan*/  mrq_workqueue; int /*<<< orphan*/  card_present; scalar_t__ removed; int /*<<< orphan*/  xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEDIUM ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 scalar_t__ MMC_STOP_TRANSMISSION ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_request*) ; 
 struct gb_sdio_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct gb_sdio_host *host = FUNC1(mmc);
	struct mmc_command *cmd = mrq->cmd;

	/* Check if it is a cancel to ongoing transfer */
	if (cmd->opcode == MMC_STOP_TRANSMISSION) {
		FUNC6(&host->xfer);
		host->xfer_stop = true;
		FUNC7(&host->xfer);
	}

	FUNC3(&host->lock);

	FUNC0(host->mrq);
	host->mrq = mrq;

	if (host->removed) {
		mrq->cmd->error = -ESHUTDOWN;
		goto out;
	}
	if (!host->card_present) {
		mrq->cmd->error = -ENOMEDIUM;
		goto out;
	}

	FUNC5(host->mrq_workqueue, &host->mrqwork);

	FUNC4(&host->lock);
	return;

out:
	host->mrq = NULL;
	FUNC4(&host->lock);
	FUNC2(mmc, mrq);
}