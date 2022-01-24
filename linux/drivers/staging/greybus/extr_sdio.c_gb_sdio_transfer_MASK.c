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
typedef  size_t u16 ;
struct mmc_data {int blocks; size_t blksz; int flags; size_t bytes_xfered; int error; TYPE_1__* mrq; } ;
struct gb_sdio_host {int xfer_stop; int /*<<< orphan*/  data_max; int /*<<< orphan*/  xfer; } ;
typedef  size_t off_t ;
struct TYPE_2__ {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int EINTR ; 
 int ETIMEDOUT ; 
 int MMC_DATA_READ ; 
 int FUNC0 (struct gb_sdio_host*,struct mmc_data*,size_t,size_t,size_t) ; 
 int FUNC1 (struct gb_sdio_host*,struct mmc_data*,size_t,size_t,size_t) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gb_sdio_host *host, struct mmc_data *data)
{
	size_t left, len;
	off_t skip = 0;
	int ret = 0;
	u16 nblocks;

	if (FUNC3(data->mrq->cmd) && data->blocks > 1) {
		ret = -ETIMEDOUT;
		goto out;
	}

	left = data->blksz * data->blocks;

	while (left) {
		/* check is a stop transmission is pending */
		FUNC4(&host->xfer);
		if (host->xfer_stop) {
			host->xfer_stop = false;
			FUNC5(&host->xfer);
			ret = -EINTR;
			goto out;
		}
		FUNC5(&host->xfer);
		len = FUNC2(left, host->data_max);
		nblocks = len / data->blksz;
		len = nblocks * data->blksz;

		if (data->flags & MMC_DATA_READ) {
			ret = FUNC0(host, data, len, nblocks, skip);
			if (ret < 0)
				goto out;
		} else {
			ret = FUNC1(host, data, len, nblocks, skip);
			if (ret < 0)
				goto out;
		}
		data->bytes_xfered += len;
		left -= len;
		skip += len;
	}

out:
	data->error = ret;
	return ret;
}