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
struct mmc_host {int dummy; } ;
struct gb_sdio_host {int card_present; int /*<<< orphan*/  lock; scalar_t__ removed; } ;

/* Variables and functions */
 int ESHUTDOWN ; 
 struct gb_sdio_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *mmc)
{
	struct gb_sdio_host *host = FUNC0(mmc);

	FUNC1(&host->lock);
	if (host->removed) {
		FUNC2(&host->lock);
		return -ESHUTDOWN;
	}
	FUNC2(&host->lock);

	return host->card_present;
}