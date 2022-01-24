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
struct mon_bus {int /*<<< orphan*/  ref; scalar_t__ bin_inited; scalar_t__ text_inited; int /*<<< orphan*/  bus_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mon_bus*) ; 
 int /*<<< orphan*/  mon_bus_drop ; 
 int /*<<< orphan*/  FUNC3 (struct mon_bus*,struct usb_bus*) ; 
 int /*<<< orphan*/  mon_lock ; 
 int /*<<< orphan*/  FUNC4 (struct mon_bus*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_bus *ubus)
{
	struct mon_bus *mbus = ubus->mon_bus;

	FUNC5(&mon_lock);
	FUNC1(&mbus->bus_link);
	if (mbus->text_inited)
		FUNC4(mbus);
	if (mbus->bin_inited)
		FUNC2(mbus);

	FUNC3(mbus, ubus);
	FUNC0(&mbus->ref, mon_bus_drop);
	FUNC6(&mon_lock);
}