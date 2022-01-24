#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__ isl1208_driver ; 
 int /*<<< orphan*/  isl1208_rtc_interrupt ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, int irq)
{
	int rc = FUNC2(&client->dev, irq, NULL,
					isl1208_rtc_interrupt,
					IRQF_SHARED | IRQF_ONESHOT,
					isl1208_driver.driver.name,
					client);
	if (!rc) {
		FUNC1(&client->dev, 1);
		FUNC3(irq);
	} else {
		FUNC0(&client->dev,
			"Unable to request irq %d, no alarm support\n",
			irq);
	}
	return rc;
}