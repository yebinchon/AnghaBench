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
struct mutex {int dummy; } ;
struct m41t80_data {TYPE_1__* rtc; } ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int M41T80_ALMON_AFE ; 
 int M41T80_FLAGS_AF ; 
 int /*<<< orphan*/  M41T80_REG_ALARM_MON ; 
 int /*<<< orphan*/  M41T80_REG_FLAGS ; 
 unsigned long RTC_AF ; 
 struct m41t80_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct i2c_client *client = dev_id;
	struct m41t80_data *m41t80 = FUNC0(client);
	struct mutex *lock = &m41t80->rtc->ops_lock;
	unsigned long events = 0;
	int flags, flags_afe;

	FUNC3(lock);

	flags_afe = FUNC1(client, M41T80_REG_ALARM_MON);
	if (flags_afe < 0) {
		FUNC4(lock);
		return IRQ_NONE;
	}

	flags = FUNC1(client, M41T80_REG_FLAGS);
	if (flags <= 0) {
		FUNC4(lock);
		return IRQ_NONE;
	}

	if (flags & M41T80_FLAGS_AF) {
		flags &= ~M41T80_FLAGS_AF;
		flags_afe &= ~M41T80_ALMON_AFE;
		events |= RTC_AF;
	}

	if (events) {
		FUNC5(m41t80->rtc, 1, events);
		FUNC2(client, M41T80_REG_FLAGS, flags);
		FUNC2(client, M41T80_REG_ALARM_MON,
					  flags_afe);
	}

	FUNC4(lock);

	return IRQ_HANDLED;
}