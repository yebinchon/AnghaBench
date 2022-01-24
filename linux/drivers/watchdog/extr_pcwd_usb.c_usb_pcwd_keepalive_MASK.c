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
struct usb_pcwd_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (struct usb_pcwd_private*,int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 

__attribute__((used)) static int FUNC1(struct usb_pcwd_private *usb_pcwd)
{
	unsigned char dummy;

	/* Re-trigger Watchdog */
	FUNC0(usb_pcwd, CMD_TRIGGER, &dummy, &dummy);

	return 0;
}