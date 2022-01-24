#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  framelen; } ;
struct TYPE_3__ {TYPE_2__ info; } ;
union hfa384x_usbin {TYPE_1__ infofrm; } ;
struct wlandevice {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wlandevice*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct wlandevice *wlandev,
			       union hfa384x_usbin *usbin)
{
	FUNC0(&usbin->infofrm.info.framelen);
	FUNC1(wlandev, &usbin->infofrm.info);
}