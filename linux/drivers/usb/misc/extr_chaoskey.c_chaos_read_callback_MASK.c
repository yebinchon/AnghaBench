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
struct urb {int status; scalar_t__ actual_length; struct chaoskey* context; } ;
struct chaoskey {int reading; int /*<<< orphan*/  wait_q; scalar_t__ used; scalar_t__ valid; int /*<<< orphan*/  interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct urb *urb)
{
	struct chaoskey *dev = urb->context;
	int status = urb->status;

	FUNC1(dev->interface, "callback status (%d)", status);

	if (status == 0)
		dev->valid = urb->actual_length;
	else
		dev->valid = 0;

	dev->used = 0;

	/* must be seen first before validity is announced */
	FUNC0();

	dev->reading = false;
	FUNC2(&dev->wait_q);
}