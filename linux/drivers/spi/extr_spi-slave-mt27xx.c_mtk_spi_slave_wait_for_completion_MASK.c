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
struct mtk_spi_slave {int /*<<< orphan*/  dev; scalar_t__ slave_aborted; int /*<<< orphan*/  xfer_done; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mtk_spi_slave *mdata)
{
	if (FUNC1(&mdata->xfer_done) ||
	    mdata->slave_aborted) {
		FUNC0(mdata->dev, "interrupted\n");
		return -EINTR;
	}

	return 0;
}