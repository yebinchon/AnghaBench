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
struct TYPE_2__ {int tm_mday; int tm_mon; int tm_year; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct rs5c372 {int* regs; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (size_t) ; 
 int RS5C_CTRL1_AALE ; 
 int RS5C_REG_ALARM_A_MIN ; 
 size_t RS5C_REG_CTRL1 ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct rs5c372* FUNC4 (struct i2c_client*) ; 
 scalar_t__ FUNC5 (struct i2c_client*,int,unsigned char) ; 
 int FUNC6 (struct rs5c372*) ; 
 unsigned char FUNC7 (struct rs5c372*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_wkalrm *t)
{
	struct i2c_client	*client = FUNC8(dev);
	struct rs5c372		*rs5c = FUNC4(client);
	int			status, addr, i;
	unsigned char		buf[3];

	/* only handle up to 24 hours in the future, like RTC_ALM_SET */
	if (t->time.tm_mday != -1
			|| t->time.tm_mon != -1
			|| t->time.tm_year != -1)
		return -EINVAL;

	/* REVISIT: round up tm_sec */

	/* if needed, disable irq (clears pending status) */
	status = FUNC6(rs5c);
	if (status < 0)
		return status;
	if (rs5c->regs[RS5C_REG_CTRL1] & RS5C_CTRL1_AALE) {
		addr = FUNC0(RS5C_REG_CTRL1);
		buf[0] = rs5c->regs[RS5C_REG_CTRL1] & ~RS5C_CTRL1_AALE;
		if (FUNC5(client, addr, buf[0]) < 0) {
			FUNC2(dev, "can't disable alarm\n");
			return -EIO;
		}
		rs5c->regs[RS5C_REG_CTRL1] = buf[0];
	}

	/* set alarm */
	buf[0] = FUNC1(t->time.tm_min);
	buf[1] = FUNC7(rs5c, t->time.tm_hour);
	buf[2] = 0x7f;	/* any/all days */

	for (i = 0; i < sizeof(buf); i++) {
		addr = FUNC0(RS5C_REG_ALARM_A_MIN + i);
		if (FUNC5(client, addr, buf[i]) < 0) {
			FUNC2(dev, "can't set alarm time\n");
			return -EIO;
		}
	}

	/* ... and maybe enable its irq */
	if (t->enabled) {
		addr = FUNC0(RS5C_REG_CTRL1);
		buf[0] = rs5c->regs[RS5C_REG_CTRL1] | RS5C_CTRL1_AALE;
		if (FUNC5(client, addr, buf[0]) < 0)
			FUNC3(dev, "can't enable alarm\n");
		rs5c->regs[RS5C_REG_CTRL1] = buf[0];
	}

	return 0;
}