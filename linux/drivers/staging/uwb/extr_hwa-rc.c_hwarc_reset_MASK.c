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
struct uwb_rc {struct hwarc* priv; } ;
struct hwarc {int /*<<< orphan*/  usb_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC3(struct uwb_rc *uwb_rc)
{
	struct hwarc *hwarc = uwb_rc->priv;
	int result;

	/* device lock must be held when calling usb_reset_device. */
	result = FUNC0(hwarc->usb_dev, NULL);
	if (result >= 0) {
		result = FUNC1(hwarc->usb_dev);
		FUNC2(hwarc->usb_dev);
	}

	return result;
}