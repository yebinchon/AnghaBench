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
struct bcm_qspi {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSPI ; 
 int /*<<< orphan*/  BSPI_BUSY_STATUS ; 
 int EIO ; 
 int FUNC0 (struct bcm_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct bcm_qspi *qspi)
{
	int i;

	/* this should normally finish within 10us */
	for (i = 0; i < 1000; i++) {
		if (!(FUNC0(qspi, BSPI, BSPI_BUSY_STATUS) & 1))
			return 0;
		FUNC2(1);
	}
	FUNC1(&qspi->pdev->dev, "timeout waiting for !busy_status\n");
	return -EIO;
}