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
typedef  int u8 ;
struct rx8010_data {int ctrlreg; struct i2c_client* client; } ;
struct TYPE_2__ {void* tm_mday; void* tm_hour; void* tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int enabled; int pending; TYPE_1__ time; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int RX8010_ALARM_AE ; 
 int /*<<< orphan*/  RX8010_ALMIN ; 
 int RX8010_CTRL_AIE ; 
 int /*<<< orphan*/  RX8010_FLAG ; 
 int RX8010_FLAG_AF ; 
 void* FUNC0 (int) ; 
 struct rx8010_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *t)
{
	struct rx8010_data *rx8010 = FUNC1(dev);
	struct i2c_client *client = rx8010->client;
	u8 alarmvals[3];
	int flagreg;
	int err;

	err = FUNC3(client, RX8010_ALMIN, 3, alarmvals);
	if (err != 3)
		return err < 0 ? err : -EIO;

	flagreg = FUNC2(client, RX8010_FLAG);
	if (flagreg < 0)
		return flagreg;

	t->time.tm_sec = 0;
	t->time.tm_min = FUNC0(alarmvals[0] & 0x7f);
	t->time.tm_hour = FUNC0(alarmvals[1] & 0x3f);

	if (!(alarmvals[2] & RX8010_ALARM_AE))
		t->time.tm_mday = FUNC0(alarmvals[2] & 0x7f);

	t->enabled = !!(rx8010->ctrlreg & RX8010_CTRL_AIE);
	t->pending = (flagreg & RX8010_FLAG_AF) && t->enabled;

	return 0;
}