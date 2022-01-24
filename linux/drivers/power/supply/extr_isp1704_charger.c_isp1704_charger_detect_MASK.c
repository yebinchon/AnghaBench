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
typedef  int u8 ;
struct isp1704_charger {scalar_t__ online; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP1704_PWR_CTRL ; 
 int ISP1704_PWR_CTRL_DPVSRC_EN ; 
 int ISP1704_PWR_CTRL_SWCTRL ; 
 int ISP1704_PWR_CTRL_VDAT_DET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct isp1704_charger*) ; 
 int FUNC2 (struct isp1704_charger*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isp1704_charger*,int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static inline int FUNC7(struct isp1704_charger *isp)
{
	unsigned long	timeout;
	u8		pwr_ctrl;
	int		ret = 0;

	pwr_ctrl = FUNC2(isp, ISP1704_PWR_CTRL);

	/* set SW control bit in PWR_CTRL register */
	FUNC3(isp, ISP1704_PWR_CTRL,
			ISP1704_PWR_CTRL_SWCTRL);

	/* enable manual charger detection */
	FUNC3(isp, FUNC0(ISP1704_PWR_CTRL),
			ISP1704_PWR_CTRL_SWCTRL
			| ISP1704_PWR_CTRL_DPVSRC_EN);
	FUNC6(1000, 2000);

	timeout = jiffies + FUNC4(300);
	do {
		/* Check if there is a charger */
		if (FUNC2(isp, ISP1704_PWR_CTRL)
				& ISP1704_PWR_CTRL_VDAT_DET) {
			ret = FUNC1(isp);
			break;
		}
	} while (!FUNC5(jiffies, timeout) && isp->online);

	/* recover original state */
	FUNC3(isp, ISP1704_PWR_CTRL, pwr_ctrl);

	return ret;
}