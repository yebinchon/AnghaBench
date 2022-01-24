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
struct wdm_device {int /*<<< orphan*/  wait; int /*<<< orphan*/  flags; int /*<<< orphan*/ * outbuf; int /*<<< orphan*/  iuspin; int /*<<< orphan*/  werr; } ;
struct urb {int /*<<< orphan*/  status; struct wdm_device* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDM_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct urb *urb)
{
	struct wdm_device *desc;
	unsigned long flags;

	desc = urb->context;
	FUNC2(&desc->iuspin, flags);
	desc->werr = urb->status;
	FUNC3(&desc->iuspin, flags);
	FUNC1(desc->outbuf);
	desc->outbuf = NULL;
	FUNC0(WDM_IN_USE, &desc->flags);
	FUNC4(&desc->wait);
}