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
typedef  int u32 ;
struct synquacer_spi {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SYNQUACER_HSSPI_ENABLE_TMOUT_MSEC ; 
 int SYNQUACER_HSSPI_MCTRL_MES ; 
 scalar_t__ SYNQUACER_HSSPI_REG_MCTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct synquacer_spi *sspi,
					    bool enable)
{
	u32 val;
	unsigned long timeout = jiffies +
		FUNC1(SYNQUACER_HSSPI_ENABLE_TMOUT_MSEC);

	/* wait MES(Module Enable Status) is updated */
	do {
		val = FUNC2(sspi->regs + SYNQUACER_HSSPI_REG_MCTRL) &
		      SYNQUACER_HSSPI_MCTRL_MES;
		if (enable && val)
			return 0;
		if (!enable && !val)
			return 0;
	} while (FUNC3(jiffies, timeout));

	FUNC0(sspi->dev, "timeout occurs in updating Module Enable Status\n");
	return -EBUSY;
}