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
struct rv8803_data {int ctrl; int /*<<< orphan*/  flags_lock; struct i2c_client* client; int /*<<< orphan*/  rtc; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned long RTC_AF ; 
 unsigned long RTC_PF ; 
 unsigned long RTC_UF ; 
 int /*<<< orphan*/  RV8803_CTRL ; 
 int RV8803_CTRL_AIE ; 
 int RV8803_CTRL_TIE ; 
 int RV8803_CTRL_UIE ; 
 int /*<<< orphan*/  RV8803_FLAG ; 
 int RV8803_FLAG_AF ; 
 int RV8803_FLAG_TF ; 
 int RV8803_FLAG_UF ; 
 int RV8803_FLAG_V1F ; 
 int RV8803_FLAG_V2F ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct rv8803_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct i2c_client *client = dev_id;
	struct rv8803_data *rv8803 = FUNC1(client);
	unsigned long events = 0;
	int flags;

	FUNC2(&rv8803->flags_lock);

	flags = FUNC5(client, RV8803_FLAG);
	if (flags <= 0) {
		FUNC3(&rv8803->flags_lock);
		return IRQ_NONE;
	}

	if (flags & RV8803_FLAG_V1F)
		FUNC0(&client->dev, "Voltage low, temperature compensation stopped.\n");

	if (flags & RV8803_FLAG_V2F)
		FUNC0(&client->dev, "Voltage low, data loss detected.\n");

	if (flags & RV8803_FLAG_TF) {
		flags &= ~RV8803_FLAG_TF;
		rv8803->ctrl &= ~RV8803_CTRL_TIE;
		events |= RTC_PF;
	}

	if (flags & RV8803_FLAG_AF) {
		flags &= ~RV8803_FLAG_AF;
		rv8803->ctrl &= ~RV8803_CTRL_AIE;
		events |= RTC_AF;
	}

	if (flags & RV8803_FLAG_UF) {
		flags &= ~RV8803_FLAG_UF;
		rv8803->ctrl &= ~RV8803_CTRL_UIE;
		events |= RTC_UF;
	}

	if (events) {
		FUNC4(rv8803->rtc, 1, events);
		FUNC6(client, RV8803_FLAG, flags);
		FUNC6(rv8803->client, RV8803_CTRL, rv8803->ctrl);
	}

	FUNC3(&rv8803->flags_lock);

	return IRQ_HANDLED;
}