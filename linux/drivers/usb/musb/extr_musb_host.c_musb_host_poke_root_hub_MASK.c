#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct musb {TYPE_1__* hcd; } ;
struct TYPE_3__ {scalar_t__ status_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(struct musb *musb)
{
	FUNC0(musb);
	if (musb->hcd->status_urb)
		FUNC1(musb->hcd);
	else
		FUNC2(musb->hcd);
}