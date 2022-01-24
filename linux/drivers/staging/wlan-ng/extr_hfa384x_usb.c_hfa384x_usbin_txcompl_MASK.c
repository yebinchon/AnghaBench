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
union hfa384x_usbin {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  u16 ;
struct wlandevice {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wlandevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wlandevice*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wlandevice *wlandev,
				  union hfa384x_usbin *usbin)
{
	u16 status;

	status = FUNC1(usbin->type); /* yeah I know it says type... */

	/* Was there an error? */
	if (FUNC0(status))
		FUNC3(wlandev, status);
	else
		FUNC2(wlandev, status);
}