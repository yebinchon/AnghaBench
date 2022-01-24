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
struct timer_list {int dummy; } ;
struct pn533 {int cancel_listen; int /*<<< orphan*/  poll_work; int /*<<< orphan*/  wq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PN533_POLL_INTERVAL ; 
 struct pn533* dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct pn533* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listen_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pn533*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct pn533 *dev = FUNC1(dev, t, listen_timer);

	FUNC0(dev->dev, "Listen mode timeout\n");

	dev->cancel_listen = 1;

	FUNC3(dev);

	FUNC4(dev->wq, &dev->poll_work,
			   FUNC2(PN533_POLL_INTERVAL));
}