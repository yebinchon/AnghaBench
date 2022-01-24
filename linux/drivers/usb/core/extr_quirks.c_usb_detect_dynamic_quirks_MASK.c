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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct TYPE_4__ {scalar_t__ vid; scalar_t__ pid; int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int quirk_count ; 
 TYPE_2__* quirk_list ; 
 int /*<<< orphan*/  quirk_mutex ; 

__attribute__((used)) static u32 FUNC3(struct usb_device *udev)
{
	u16 vid = FUNC0(udev->descriptor.idVendor);
	u16 pid = FUNC0(udev->descriptor.idProduct);
	int i, flags = 0;

	FUNC1(&quirk_mutex);

	for (i = 0; i < quirk_count; i++) {
		if (vid == quirk_list[i].vid && pid == quirk_list[i].pid) {
			flags = quirk_list[i].flags;
			break;
		}
	}

	FUNC2(&quirk_mutex);

	return flags;
}