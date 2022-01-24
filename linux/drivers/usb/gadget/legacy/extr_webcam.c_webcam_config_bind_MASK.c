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
struct usb_configuration {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_uvc ; 
 int /*<<< orphan*/  fi_uvc ; 
 int FUNC2 (struct usb_configuration*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct usb_configuration *c)
{
	int status = 0;

	f_uvc = FUNC3(fi_uvc);
	if (FUNC0(f_uvc))
		return FUNC1(f_uvc);

	status = FUNC2(c, f_uvc);
	if (status < 0)
		FUNC4(f_uvc);

	return status;
}