#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rx8010_data {int ctrlreg; int /*<<< orphan*/  client; TYPE_3__* rtc; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ enabled; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_2__ aie_timer; TYPE_1__ uie_rtctimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX8010_CTRL ; 
 int RX8010_CTRL_AIE ; 
 int RX8010_CTRL_UIE ; 
 int /*<<< orphan*/  RX8010_FLAG ; 
 int RX8010_FLAG_AF ; 
 struct rx8010_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				   unsigned int enabled)
{
	struct i2c_client *client = FUNC3(dev);
	struct rx8010_data *rx8010 = FUNC0(dev);
	int flagreg;
	u8 ctrl;
	int err;

	ctrl = rx8010->ctrlreg;

	if (enabled) {
		if (rx8010->rtc->uie_rtctimer.enabled)
			ctrl |= RX8010_CTRL_UIE;
		if (rx8010->rtc->aie_timer.enabled)
			ctrl |= (RX8010_CTRL_AIE | RX8010_CTRL_UIE);
	} else {
		if (!rx8010->rtc->uie_rtctimer.enabled)
			ctrl &= ~RX8010_CTRL_UIE;
		if (!rx8010->rtc->aie_timer.enabled)
			ctrl &= ~RX8010_CTRL_AIE;
	}

	flagreg = FUNC1(client, RX8010_FLAG);
	if (flagreg < 0)
		return flagreg;

	flagreg &= ~RX8010_FLAG_AF;
	err = FUNC2(rx8010->client, RX8010_FLAG, flagreg);
	if (err < 0)
		return err;

	if (ctrl != rx8010->ctrlreg) {
		rx8010->ctrlreg = ctrl;
		err = FUNC2(rx8010->client, RX8010_CTRL,
						rx8010->ctrlreg);
		if (err < 0)
			return err;
	}

	return 0;
}