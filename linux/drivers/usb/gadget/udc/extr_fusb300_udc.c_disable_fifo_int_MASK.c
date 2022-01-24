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
struct fusb300_ep {scalar_t__ epnum; struct fusb300* fusb300; } ;
struct fusb300 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUSB300_OFFSET_IGER0 ; 
 int /*<<< orphan*/  FUNC1 (struct fusb300*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct fusb300_ep *ep)
{
	struct fusb300 *fusb300 = ep->fusb300;

	if (ep->epnum) {
		FUNC1(fusb300, FUSB300_OFFSET_IGER0,
			FUNC0(ep->epnum));
	} else {
		FUNC2("can't disable_fifo_int ep0\n");
		return -EINVAL;
	}

	return 0;
}