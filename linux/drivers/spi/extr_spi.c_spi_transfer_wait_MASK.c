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
struct spi_transfer {long long len; int /*<<< orphan*/  speed_hz; } ;
struct spi_statistics {int dummy; } ;
struct spi_message {TYPE_1__* spi; } ;
struct spi_controller {int /*<<< orphan*/  xfer_completion; struct spi_statistics statistics; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct spi_statistics statistics; } ;

/* Variables and functions */
 int EINTR ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct spi_statistics*,int /*<<< orphan*/ ) ; 
 unsigned long long UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long) ; 
 scalar_t__ FUNC5 (struct spi_controller*) ; 
 int /*<<< orphan*/  timedout ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct spi_controller *ctlr,
			     struct spi_message *msg,
			     struct spi_transfer *xfer)
{
	struct spi_statistics *statm = &ctlr->statistics;
	struct spi_statistics *stats = &msg->spi->statistics;
	unsigned long long ms = 1;

	if (FUNC5(ctlr)) {
		if (FUNC6(&ctlr->xfer_completion)) {
			FUNC1(&msg->spi->dev, "SPI transfer interrupted\n");
			return -EINTR;
		}
	} else {
		ms = 8LL * 1000LL * xfer->len;
		FUNC3(ms, xfer->speed_hz);
		ms += ms + 200; /* some tolerance */

		if (ms > UINT_MAX)
			ms = UINT_MAX;

		ms = FUNC7(&ctlr->xfer_completion,
						 FUNC4(ms));

		if (ms == 0) {
			FUNC0(statm, timedout);
			FUNC0(stats, timedout);
			FUNC2(&msg->spi->dev,
				"SPI transfer timed out\n");
			return -ETIMEDOUT;
		}
	}

	return 0;
}