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
struct device {int dummy; } ;
struct arche_apb_ctrl_drvdata {int /*<<< orphan*/  boot_ret; } ;

/* Variables and functions */
 struct arche_apb_ctrl_drvdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev)
{
	struct arche_apb_ctrl_drvdata *apb = FUNC0(dev);

	FUNC1(apb->boot_ret, 0);
}