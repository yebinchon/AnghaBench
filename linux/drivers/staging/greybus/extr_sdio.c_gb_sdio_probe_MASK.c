#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmc_host {int max_segs; int max_blk_count; int max_req_size; int max_blk_size; int max_seg_size; int /*<<< orphan*/ * ops; } ;
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int /*<<< orphan*/  dev; TYPE_1__* cport_desc; int /*<<< orphan*/  bundle; } ;
struct gb_sdio_host {int removed; int /*<<< orphan*/  mrq_workqueue; scalar_t__ queued_events; int /*<<< orphan*/  mrqwork; int /*<<< orphan*/  xfer; int /*<<< orphan*/  lock; struct mmc_host* mmc; struct gbphy_device* gbphy_dev; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct gb_connection*) ; 
 int FUNC2 (struct gb_connection*) ; 
 int FUNC3 (struct gb_sdio_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct gb_connection* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_connection*) ; 
 int FUNC10 (struct gb_connection*) ; 
 int FUNC11 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC12 (struct gb_connection*,struct gb_sdio_host*) ; 
 int /*<<< orphan*/  FUNC13 (struct gbphy_device*,struct gb_sdio_host*) ; 
 int FUNC14 (struct gb_sdio_host*) ; 
 int /*<<< orphan*/  gb_sdio_mrq_work ; 
 int /*<<< orphan*/  gb_sdio_ops ; 
 int /*<<< orphan*/  gb_sdio_request_handler ; 
 int /*<<< orphan*/  FUNC15 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct mmc_host*) ; 
 struct mmc_host* FUNC18 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct mmc_host*) ; 
 struct gb_sdio_host* FUNC20 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct gbphy_device *gbphy_dev,
			 const struct gbphy_device_id *id)
{
	struct gb_connection *connection;
	struct mmc_host *mmc;
	struct gb_sdio_host *host;
	int ret = 0;

	mmc = FUNC18(sizeof(*host), &gbphy_dev->dev);
	if (!mmc)
		return -ENOMEM;

	connection = FUNC7(gbphy_dev->bundle,
					  FUNC16(gbphy_dev->cport_desc->id),
					  gb_sdio_request_handler);
	if (FUNC1(connection)) {
		ret = FUNC2(connection);
		goto exit_mmc_free;
	}

	host = FUNC20(mmc);
	host->mmc = mmc;
	host->removed = true;

	host->connection = connection;
	FUNC12(connection, host);
	host->gbphy_dev = gbphy_dev;
	FUNC13(gbphy_dev, host);

	ret = FUNC11(connection);
	if (ret)
		goto exit_connection_destroy;

	ret = FUNC14(host);
	if (ret < 0)
		goto exit_connection_disable;

	mmc->ops = &gb_sdio_ops;

	mmc->max_segs = host->mmc->max_blk_count;

	/* for now we make a map 1:1 between max request and segment size */
	mmc->max_req_size = mmc->max_blk_size * mmc->max_blk_count;
	mmc->max_seg_size = mmc->max_req_size;

	FUNC21(&host->lock);
	FUNC22(&host->xfer);
	host->mrq_workqueue = FUNC4("mmc-%s", 0, 1,
					      FUNC6(&gbphy_dev->dev));
	if (!host->mrq_workqueue) {
		ret = -ENOMEM;
		goto exit_connection_disable;
	}
	FUNC0(&host->mrqwork, gb_sdio_mrq_work);

	ret = FUNC10(connection);
	if (ret)
		goto exit_wq_destroy;

	ret = FUNC17(mmc);
	if (ret < 0)
		goto exit_wq_destroy;
	host->removed = false;
	ret = FUNC3(host, host->queued_events);
	host->queued_events = 0;

	FUNC15(gbphy_dev);

	return ret;

exit_wq_destroy:
	FUNC5(host->mrq_workqueue);
exit_connection_disable:
	FUNC9(connection);
exit_connection_destroy:
	FUNC8(connection);
exit_mmc_free:
	FUNC19(mmc);

	return ret;
}