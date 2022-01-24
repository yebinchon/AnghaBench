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
struct regulator_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REGULATOR_EVENT_REGULATION_OUT ; 
 int /*<<< orphan*/  REGULATOR_EVENT_UNDER_VOLTAGE ; 
 int WM8350_IRQ_CS1 ; 
 int WM8350_IRQ_CS2 ; 
 int /*<<< orphan*/  FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct regulator_dev *rdev = (struct regulator_dev *)data;

	FUNC0(rdev);
	if (irq == WM8350_IRQ_CS1 || irq == WM8350_IRQ_CS2)
		FUNC1(rdev,
					      REGULATOR_EVENT_REGULATION_OUT,
					      NULL);
	else
		FUNC1(rdev,
					      REGULATOR_EVENT_UNDER_VOLTAGE,
					      NULL);
	FUNC2(rdev);

	return IRQ_HANDLED;
}