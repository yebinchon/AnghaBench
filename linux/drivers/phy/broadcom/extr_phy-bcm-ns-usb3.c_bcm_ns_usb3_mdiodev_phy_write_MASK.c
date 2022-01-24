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
typedef  int /*<<< orphan*/  u16 ;
struct mdio_device {int /*<<< orphan*/  addr; int /*<<< orphan*/  bus; } ;
struct bcm_ns_usb3 {struct mdio_device* mdiodev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct bcm_ns_usb3 *usb3, u16 reg,
					 u16 value)
{
	struct mdio_device *mdiodev = usb3->mdiodev;

	return FUNC0(mdiodev->bus, mdiodev->addr, reg, value);
}