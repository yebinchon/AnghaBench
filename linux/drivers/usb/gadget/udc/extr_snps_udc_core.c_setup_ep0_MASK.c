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
struct udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct udc*) ; 

__attribute__((used)) static int FUNC3(struct udc *dev)
{
	FUNC0(dev);
	/* enable ep0 interrupts */
	FUNC2(dev);
	/* enable device setup interrupts */
	FUNC1(dev);

	return 0;
}