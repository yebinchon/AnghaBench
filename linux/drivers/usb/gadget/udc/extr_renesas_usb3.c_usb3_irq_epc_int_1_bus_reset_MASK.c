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
struct renesas_usb3 {int disabled_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*) ; 

__attribute__((used)) static void FUNC3(struct renesas_usb3 *usb3)
{
	FUNC0(usb3);
	if (usb3->disabled_count < 3)
		FUNC2(usb3);
	else
		FUNC1(usb3);
}