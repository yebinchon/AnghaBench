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
struct musb {scalar_t__ port_mode; int /*<<< orphan*/  g; int /*<<< orphan*/  gadget_work; } ;

/* Variables and functions */
 scalar_t__ MUSB_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct musb *musb)
{
	if (musb->port_mode == MUSB_HOST)
		return;

	FUNC0(&musb->gadget_work);
	FUNC1(&musb->g);
}