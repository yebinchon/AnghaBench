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
struct usb_serial {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

__attribute__((used)) static int FUNC1(struct usb_serial *serial,
					 const char *function)
{
	if (!serial) {
		FUNC0("%s - serial == NULL\n", function);
		return -1;
	}
	if (!serial->type) {
		FUNC0("%s - serial->type == NULL!\n", function);
		return -1;
	}

	return 0;
}