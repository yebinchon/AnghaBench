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
typedef  int u16 ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DRCI_COMMAND ; 
 scalar_t__ DRCI_REG_BASE ; 
 int FUNC0 (struct usb_device*,scalar_t__,int) ; 

__attribute__((used)) static inline int FUNC1(struct usb_device *usb_dev, u16 ep)
{
	return FUNC0(usb_dev, DRCI_REG_BASE + DRCI_COMMAND + ep * 16, 1);
}