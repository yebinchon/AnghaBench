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
struct usb_bus {struct mon_bus* mon_bus; } ;
struct mon_bus {int /*<<< orphan*/  bus_link; int /*<<< orphan*/  bin_inited; int /*<<< orphan*/  text_inited; struct usb_bus* u_bus; int /*<<< orphan*/  r_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mon_bus* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mon_bus*,struct usb_bus*) ; 
 int /*<<< orphan*/  mon_buses ; 
 int /*<<< orphan*/  mon_lock ; 
 int /*<<< orphan*/  FUNC5 (struct mon_bus*,struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_bus *ubus)
{
	struct mon_bus *mbus;

	mbus = FUNC2(sizeof(struct mon_bus), GFP_KERNEL);
	if (mbus == NULL)
		goto err_alloc;
	FUNC1(&mbus->ref);
	FUNC8(&mbus->lock);
	FUNC0(&mbus->r_list);

	/*
	 * We don't need to take a reference to ubus, because we receive
	 * a notification if the bus is about to be removed.
	 */
	mbus->u_bus = ubus;
	ubus->mon_bus = mbus;

	mbus->text_inited = FUNC5(mbus, ubus);
	mbus->bin_inited = FUNC4(mbus, ubus);

	FUNC6(&mon_lock);
	FUNC3(&mbus->bus_link, &mon_buses);
	FUNC7(&mon_lock);
	return;

err_alloc:
	return;
}