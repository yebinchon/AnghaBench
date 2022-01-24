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
struct platform_device {int dummy; } ;
struct lpc32xx_udc {int dummy; } ;

/* Variables and functions */
 struct lpc32xx_udc* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct platform_device *dev)
{
	/* Force disconnect on reboot */
	struct lpc32xx_udc *udc = FUNC0(dev);

	FUNC1(udc, 0);
}