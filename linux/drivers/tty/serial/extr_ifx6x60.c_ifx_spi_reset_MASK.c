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
struct TYPE_3__ {int /*<<< orphan*/  po; int /*<<< orphan*/  reset; } ;
struct ifx_spi_device {scalar_t__ mdm_reset_state; TYPE_2__* spi_dev; int /*<<< orphan*/  mdm_reset_wait; TYPE_1__ gpio; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFX_RESET_TIMEOUT ; 
 int /*<<< orphan*/  MR_COMPLETE ; 
 int /*<<< orphan*/  MR_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ifx_spi_device *ifx_dev)
{
	int ret;
	/*
	 * set up modem power, reset
	 *
	 * delays are required on some platforms for the modem
	 * to reset properly
	 */
	FUNC3(MR_START, &ifx_dev->mdm_reset_state);
	FUNC1(ifx_dev->gpio.po, 0);
	FUNC1(ifx_dev->gpio.reset, 0);
	FUNC2(25);
	FUNC1(ifx_dev->gpio.reset, 1);
	FUNC2(1);
	FUNC1(ifx_dev->gpio.po, 1);
	FUNC2(1);
	FUNC1(ifx_dev->gpio.po, 0);
	ret = FUNC5(ifx_dev->mdm_reset_wait,
				 FUNC4(MR_COMPLETE,
					  &ifx_dev->mdm_reset_state),
				 IFX_RESET_TIMEOUT);
	if (!ret)
		FUNC0(&ifx_dev->spi_dev->dev, "Modem reset timeout: (state:%lx)",
			 ifx_dev->mdm_reset_state);

	ifx_dev->mdm_reset_state = 0;
	return ret;
}