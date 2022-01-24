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
struct usb_interface {int dummy; } ;
struct trancevibrator {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trancevibrator*) ; 
 struct trancevibrator* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_interface *interface)
{
	struct trancevibrator *dev;

	dev = FUNC1 (interface);
	FUNC3(interface, NULL);
	FUNC2(dev->udev);
	FUNC0(dev);
}