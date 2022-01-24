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
struct spi_message {scalar_t__ frame_length; scalar_t__ actual_length; } ;
struct spi_test {int /*<<< orphan*/  elapsed_time; struct spi_message msg; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int dump_messages ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  simulate_only ; 
 int FUNC6 (struct spi_device*,struct spi_message*) ; 
 int FUNC7 (struct spi_device*,struct spi_test*) ; 
 int FUNC8 (struct spi_device*,struct spi_message*,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct spi_message*,int) ; 

int FUNC10(struct spi_device *spi, struct spi_test *test,
			 void *tx, void *rx)
{
	struct spi_message *msg = &test->msg;
	int ret = 0;
	int i;

	/* only if we do not simulate */
	if (!simulate_only) {
		ktime_t start;

		/* dump the complete message before and after the transfer */
		if (dump_messages == 3)
			FUNC9(spi, msg, true);

		start = FUNC2();
		/* run spi message */
		ret = FUNC6(spi, msg);
		test->elapsed_time = FUNC4(FUNC3(FUNC2(), start));
		if (ret == -ETIMEDOUT) {
			FUNC1(&spi->dev,
				 "spi-message timed out - rerunning...\n");
			/* rerun after a few explicit schedules */
			for (i = 0; i < 16; i++)
				FUNC5();
			ret = FUNC6(spi, msg);
		}
		if (ret) {
			FUNC0(&spi->dev,
				"Failed to execute spi_message: %i\n",
				ret);
			goto exit;
		}

		/* do some extra error checks */
		if (msg->frame_length != msg->actual_length) {
			FUNC0(&spi->dev,
				"actual length differs from expected\n");
			ret = -EIO;
			goto exit;
		}

		/* run rx-buffer tests */
		ret = FUNC8(spi, msg, tx, rx);
		if (ret)
			goto exit;

		ret = FUNC7(spi, test);
	}

	/* if requested or on error dump message (including data) */
exit:
	if (dump_messages || ret)
		FUNC9(spi, msg,
				      (dump_messages >= 2) || (ret));

	return ret;
}