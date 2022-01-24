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
struct isp1301 {int /*<<< orphan*/  work; int /*<<< orphan*/  timer; int /*<<< orphan*/  todo; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP1301_INTERRUPT_FALLING ; 
 int /*<<< orphan*/  ISP1301_INTERRUPT_RISING ; 
 int /*<<< orphan*/  WORK_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct isp1301*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct isp1301* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct isp1301*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct isp1301*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * the_transceiver ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c)
{
	struct isp1301	*isp;

	isp = FUNC4(i2c);

	FUNC5(isp, ISP1301_INTERRUPT_FALLING, ~0);
	FUNC5(isp, ISP1301_INTERRUPT_RISING, ~0);
	FUNC2(i2c->irq, isp);
#ifdef	CONFIG_USB_OTG
	otg_unbind(isp);
#endif
	if (FUNC6())
		FUNC3(2);

	FUNC9(WORK_STOP, &isp->todo);
	FUNC0(&isp->timer);
	FUNC1(&isp->work);

	FUNC8(&i2c->dev);
	the_transceiver = NULL;

	return 0;
}