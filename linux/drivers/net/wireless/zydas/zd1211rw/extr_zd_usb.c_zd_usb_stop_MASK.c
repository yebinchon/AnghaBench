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
struct zd_usb {scalar_t__ initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC5 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC6 (struct zd_usb*) ; 

__attribute__((used)) static void FUNC7(struct zd_usb *usb)
{
	FUNC0(FUNC2(usb), "\n");

	FUNC1(FUNC6(usb));

	FUNC5(usb);
	FUNC4(usb);
	FUNC3(usb);

	usb->initialized = 0;
}