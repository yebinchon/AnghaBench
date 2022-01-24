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
typedef  int u16 ;
struct c67x00_sie {int /*<<< orphan*/  (* irq ) (struct c67x00_sie*,int,int) ;} ;
struct c67x00_device {TYPE_1__* pdev; struct c67x00_sie* sie; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int C67X00_SIES ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct c67x00_device*,int) ; 
 int FUNC2 (struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct c67x00_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct c67x00_sie*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *__dev)
{
	struct c67x00_device *c67x00 = __dev;
	struct c67x00_sie *sie;
	u16 msg, int_status;
	int i, count = 8;

	int_status = FUNC2(c67x00);
	if (!int_status)
		return IRQ_NONE;

	while (int_status != 0 && (count-- >= 0)) {
		FUNC3(c67x00, int_status);
		for (i = 0; i < C67X00_SIES; i++) {
			sie = &c67x00->sie[i];
			msg = 0;
			if (int_status & FUNC0(i))
				msg = FUNC1(c67x00, i);
			if (sie->irq)
				sie->irq(sie, int_status, msg);
		}
		int_status = FUNC2(c67x00);
	}

	if (int_status)
		FUNC4(&c67x00->pdev->dev, "Not all interrupts handled! "
			 "status = 0x%04x\n", int_status);

	return IRQ_HANDLED;
}