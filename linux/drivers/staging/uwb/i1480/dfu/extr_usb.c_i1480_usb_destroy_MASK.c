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
struct i1480_usb {int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  usb_iface; int /*<<< orphan*/  neep_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC5(struct i1480_usb *i1480_usb)
{
	FUNC1(i1480_usb->neep_urb);
	FUNC0(i1480_usb->neep_urb);
	FUNC4(i1480_usb->usb_iface, NULL);
	FUNC3(i1480_usb->usb_iface);
	FUNC2(i1480_usb->usb_dev);
}