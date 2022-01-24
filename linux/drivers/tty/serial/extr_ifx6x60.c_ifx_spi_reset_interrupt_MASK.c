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
struct TYPE_2__ {int /*<<< orphan*/  reset_out; } ;
struct ifx_spi_device {int /*<<< orphan*/  mdm_reset_wait; int /*<<< orphan*/  mdm_reset_state; int /*<<< orphan*/  tty_port; TYPE_1__ gpio; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MR_COMPLETE ; 
 int /*<<< orphan*/  MR_INPROGRESS ; 
 int /*<<< orphan*/  MR_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev)
{
	struct ifx_spi_device *ifx_dev = dev;
	int val = FUNC1(ifx_dev->gpio.reset_out);
	int solreset = FUNC3(MR_START, &ifx_dev->mdm_reset_state);

	if (val == 0) {
		/* entered reset */
		FUNC2(MR_INPROGRESS, &ifx_dev->mdm_reset_state);
		if (!solreset) {
			/* unsolicited reset  */
			FUNC4(&ifx_dev->tty_port, false);
		}
	} else {
		/* exited reset */
		FUNC0(MR_INPROGRESS, &ifx_dev->mdm_reset_state);
		if (solreset) {
			FUNC2(MR_COMPLETE, &ifx_dev->mdm_reset_state);
			FUNC5(&ifx_dev->mdm_reset_wait);
		}
	}
	return IRQ_HANDLED;
}