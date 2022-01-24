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
typedef  scalar_t__ u8 ;
struct cros_ec_device {int din_size; scalar_t__* din; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EC_MSG_DEADLINE_MS ; 
 int EC_MSG_PREAMBLE_COUNT ; 
 scalar_t__ EC_SPI_FRAME_START ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int) ; 
 int FUNC5 (int,int) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct cros_ec_device*,scalar_t__*,int) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct cros_ec_device *ec_dev,
					int need_len)
{
	u8 *ptr, *end;
	int ret;
	unsigned long deadline;
	int todo;

	FUNC0(ec_dev->din_size < EC_MSG_PREAMBLE_COUNT);

	/* Receive data until we see the header byte */
	deadline = jiffies + FUNC6(EC_MSG_DEADLINE_MS);
	while (true) {
		unsigned long start_jiffies = jiffies;

		ret = FUNC7(ec_dev,
				      ec_dev->din,
				      EC_MSG_PREAMBLE_COUNT);
		if (ret < 0)
			return ret;

		ptr = ec_dev->din;
		for (end = ptr + EC_MSG_PREAMBLE_COUNT; ptr != end; ptr++) {
			if (*ptr == EC_SPI_FRAME_START) {
				FUNC2(ec_dev->dev, "msg found at %zd\n",
					ptr - ec_dev->din);
				break;
			}
		}
		if (ptr != end)
			break;

		/*
		 * Use the time at the start of the loop as a timeout.  This
		 * gives us one last shot at getting the transfer and is useful
		 * in case we got context switched out for a while.
		 */
		if (FUNC8(start_jiffies, deadline)) {
			FUNC3(ec_dev->dev, "EC failed to respond in time\n");
			return -ETIMEDOUT;
		}
	}

	/*
	 * ptr now points to the header byte. Copy any valid data to the
	 * start of our buffer
	 */
	todo = end - ++ptr;
	FUNC0(todo < 0 || todo > ec_dev->din_size);
	todo = FUNC5(todo, need_len);
	FUNC4(ec_dev->din, ptr, todo);
	ptr = ec_dev->din + todo;
	FUNC2(ec_dev->dev, "need %d, got %d bytes from preamble\n",
		 need_len, todo);
	need_len -= todo;

	/* Receive data until we have it all */
	while (need_len > 0) {
		/*
		 * We can't support transfers larger than the SPI FIFO size
		 * unless we have DMA. We don't have DMA on the ISP SPI ports
		 * for Exynos. We need a way of asking SPI driver for
		 * maximum-supported transfer size.
		 */
		todo = FUNC5(need_len, 256);
		FUNC2(ec_dev->dev, "loop, todo=%d, need_len=%d, ptr=%zd\n",
			todo, need_len, ptr - ec_dev->din);

		ret = FUNC7(ec_dev, ptr, todo);
		if (ret < 0)
			return ret;

		FUNC1(ec_dev->dev, "interim", ptr, todo);
		ptr += todo;
		need_len -= todo;
	}

	FUNC2(ec_dev->dev, "loop done, ptr=%zd\n", ptr - ec_dev->din);

	return 0;
}