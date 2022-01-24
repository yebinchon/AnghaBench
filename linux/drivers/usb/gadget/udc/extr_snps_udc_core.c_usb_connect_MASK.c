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
struct udc {int connected; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct udc*) ; 

__attribute__((used)) static void FUNC3(struct udc *dev)
{
	/* Return if already connected */
	if (dev->connected)
		return;

	FUNC0(dev->dev, "USB Connect\n");

	dev->connected = 1;

	/* put into initial config */
	FUNC1(dev);

	/* enable device setup interrupts */
	FUNC2(dev);
}