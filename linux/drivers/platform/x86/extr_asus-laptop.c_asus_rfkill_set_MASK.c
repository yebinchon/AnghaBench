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
struct asus_rfkill {scalar_t__ control_id; struct asus_laptop* asus; } ;
struct asus_laptop {int dummy; } ;

/* Variables and functions */
 scalar_t__ BT_RSTS ; 
 int EINVAL ; 
 scalar_t__ WL_RSTS ; 
 scalar_t__ WM_RSTS ; 
 scalar_t__ WW_RSTS ; 
 int FUNC0 (struct asus_laptop*,int) ; 
 int FUNC1 (struct asus_laptop*,int) ; 
 int FUNC2 (struct asus_laptop*,int) ; 
 int FUNC3 (struct asus_laptop*,int) ; 

__attribute__((used)) static int FUNC4(void *data, bool blocked)
{
	struct asus_rfkill *rfk = data;
	struct asus_laptop *asus = rfk->asus;

	if (rfk->control_id == WL_RSTS)
		return FUNC2(asus, !blocked);
	else if (rfk->control_id == BT_RSTS)
		return FUNC0(asus, !blocked);
	else if (rfk->control_id == WM_RSTS)
		return FUNC1(asus, !blocked);
	else if (rfk->control_id == WW_RSTS)
		return FUNC3(asus, !blocked);

	return -EINVAL;
}