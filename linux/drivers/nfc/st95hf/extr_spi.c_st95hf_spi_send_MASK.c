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
struct st95hf_spi_context {int req_issync; int /*<<< orphan*/  spi_lock; int /*<<< orphan*/  done; struct spi_device* spidev; } ;
struct spi_transfer {unsigned char* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  enum req_type { ____Placeholder_req_type } req_type ;

/* Variables and functions */
 int ASYNC ; 
 int ETIMEDOUT ; 
 int SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int FUNC7 (struct spi_device*,struct spi_message*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct st95hf_spi_context *spicontext,
		    unsigned char *buffertx,
		    int datalen,
		    enum req_type reqtype)
{
	struct spi_message m;
	int result = 0;
	struct spi_device *spidev = spicontext->spidev;
	struct spi_transfer tx_transfer = {
		.tx_buf = buffertx,
		.len = datalen,
	};

	FUNC2(&spicontext->spi_lock);

	if (reqtype == SYNC) {
		spicontext->req_issync = true;
		FUNC4(&spicontext->done);
	} else {
		spicontext->req_issync = false;
	}

	FUNC6(&m);
	FUNC5(&tx_transfer, &m);

	result = FUNC7(spidev, &m);
	if (result) {
		FUNC0(&spidev->dev, "error: sending cmd to st95hf using SPI = %d\n",
			result);
		FUNC3(&spicontext->spi_lock);
		return result;
	}

	/* return for asynchronous or no-wait case */
	if (reqtype == ASYNC) {
		FUNC3(&spicontext->spi_lock);
		return 0;
	}

	result = FUNC8(&spicontext->done,
					     FUNC1(1000));
	/* check for timeout or success */
	if (!result) {
		FUNC0(&spidev->dev, "error: response not ready timeout\n");
		result = -ETIMEDOUT;
	} else {
		result = 0;
	}

	FUNC3(&spicontext->spi_lock);

	return result;
}