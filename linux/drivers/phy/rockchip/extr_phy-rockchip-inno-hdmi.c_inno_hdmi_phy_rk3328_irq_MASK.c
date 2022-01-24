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
struct inno_hdmi_phy {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RK3328_PDATA_EN ; 
 int /*<<< orphan*/  FUNC0 (struct inno_hdmi_phy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct inno_hdmi_phy *inno = dev_id;

	FUNC0(inno, 0x02, RK3328_PDATA_EN, 0);
	FUNC1(10, 20);
	FUNC0(inno, 0x02, RK3328_PDATA_EN, RK3328_PDATA_EN);

	return IRQ_HANDLED;
}