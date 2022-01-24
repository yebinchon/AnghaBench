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
struct at91_udc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct at91_udc* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct platform_device *dev)
{
	struct at91_udc *udc = FUNC0(dev);
	unsigned long	flags;

	/* force disconnect on reboot */
	FUNC2(&udc->lock, flags);
	FUNC1(FUNC0(dev), 0);
	FUNC3(&udc->lock, flags);
}