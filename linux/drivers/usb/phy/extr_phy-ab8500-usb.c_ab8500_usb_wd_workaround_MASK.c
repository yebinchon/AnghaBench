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
struct ab8500_usb {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AB8500_BIT_WD_CTRL_ENABLE ; 
 int AB8500_BIT_WD_CTRL_KICK ; 
 int /*<<< orphan*/  AB8500_MAIN_WD_CTRL_REG ; 
 int /*<<< orphan*/  AB8500_SYS_CTRL2_BLOCK ; 
 int /*<<< orphan*/  AB8500_WD_KICK_DELAY_US ; 
 int /*<<< orphan*/  AB8500_WD_V11_DISABLE_DELAY_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ab8500_usb *ab)
{
	FUNC0(ab->dev,
		AB8500_SYS_CTRL2_BLOCK,
		AB8500_MAIN_WD_CTRL_REG,
		AB8500_BIT_WD_CTRL_ENABLE);

	FUNC1(AB8500_WD_KICK_DELAY_US);

	FUNC0(ab->dev,
		AB8500_SYS_CTRL2_BLOCK,
		AB8500_MAIN_WD_CTRL_REG,
		(AB8500_BIT_WD_CTRL_ENABLE
		| AB8500_BIT_WD_CTRL_KICK));

	FUNC1(AB8500_WD_V11_DISABLE_DELAY_US);

	FUNC0(ab->dev,
		AB8500_SYS_CTRL2_BLOCK,
		AB8500_MAIN_WD_CTRL_REG,
		0);
}