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
struct gbphy_device {int dummy; } ;
struct gb_sdio_host {int removed; int /*<<< orphan*/  mrq_workqueue; int /*<<< orphan*/  lock; struct mmc_host* mmc; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_connection*,int /*<<< orphan*/ *) ; 
 struct gb_sdio_host* FUNC6 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct gbphy_device*) ; 
 int FUNC8 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct gbphy_device *gbphy_dev)
{
	struct gb_sdio_host *host = FUNC6(gbphy_dev);
	struct gb_connection *connection = host->connection;
	struct mmc_host *mmc;
	int ret;

	ret = FUNC8(gbphy_dev);
	if (ret)
		FUNC7(gbphy_dev);

	FUNC11(&host->lock);
	host->removed = true;
	mmc = host->mmc;
	FUNC5(connection, NULL);
	FUNC12(&host->lock);

	FUNC1(host->mrq_workqueue);
	FUNC0(host->mrq_workqueue);
	FUNC4(connection);
	FUNC10(mmc);
	FUNC3(connection);
	FUNC2(connection);
	FUNC9(mmc);
}