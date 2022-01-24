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
struct device {int dummy; } ;
struct ci_hdrc {int /*<<< orphan*/  lock; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 int FUNC0 (struct ci_hdrc*) ; 
 struct ci_hdrc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static enum usb_role FUNC4(struct device *dev)
{
	struct ci_hdrc *ci = FUNC1(dev);
	enum usb_role role;
	unsigned long flags;

	FUNC2(&ci->lock, flags);
	role = FUNC0(ci);
	FUNC3(&ci->lock, flags);

	return role;
}