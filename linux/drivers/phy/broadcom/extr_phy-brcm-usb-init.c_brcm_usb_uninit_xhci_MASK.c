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
struct brcm_usb_init_params {int /*<<< orphan*/  ctrl_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY3_IDDQ_OVERRIDE ; 
 int /*<<< orphan*/  USB30_PCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcm_usb_init_params*,int) ; 

void FUNC2(struct brcm_usb_init_params *params)
{
	FUNC1(params, 1);
	FUNC0(params->ctrl_regs, USB30_PCTL, PHY3_IDDQ_OVERRIDE);
}