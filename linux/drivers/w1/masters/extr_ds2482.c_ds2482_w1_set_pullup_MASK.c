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
struct ds2482_w1_chan {struct ds2482_data* pdev; } ;
struct ds2482_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2482_CMD_WRITE_CONFIG ; 
 int DS2482_REG_CFG_APU ; 
 int DS2482_REG_CFG_SPU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ds2482_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ds2482_data*) ; 

__attribute__((used)) static u8 FUNC3(void *data, int delay)
{
	struct ds2482_w1_chan *pchan = data;
	struct ds2482_data    *pdev = pchan->pdev;
	u8 retval = 1;

	/* if delay is non-zero activate the pullup,
	 * the strong pullup will be automatically deactivated
	 * by the master, so do not explicitly deactive it
	 */
	if (delay) {
		/* both waits are crucial, otherwise devices might not be
		 * powered long enough, causing e.g. a w1_therm sensor to
		 * provide wrong conversion results
		 */
		FUNC2(pdev);
		/* note: it seems like both SPU and APU have to be set! */
		retval = FUNC1(pdev, DS2482_CMD_WRITE_CONFIG,
			FUNC0(DS2482_REG_CFG_SPU |
						DS2482_REG_CFG_APU));
		FUNC2(pdev);
	}

	return retval;
}