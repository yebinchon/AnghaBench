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
struct twl4030_usb {int /*<<< orphan*/  dev; int /*<<< orphan*/  id_workaround_work; int /*<<< orphan*/  linkstat; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  MUSB_UNKNOWN ; 
 struct twl4030_usb* FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct twl4030_usb *twl = FUNC0(phy);

	FUNC1(twl->dev);
	twl->linkstat = MUSB_UNKNOWN;
	FUNC4(&twl->id_workaround_work, HZ);
	FUNC2(twl->dev);
	FUNC3(twl->dev);

	return 0;
}