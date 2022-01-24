#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_port {int /*<<< orphan*/  dev; TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
typedef  int __u16 ;
struct TYPE_2__ {struct usb_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCS_WRREQ ; 
 int /*<<< orphan*/  MCS_WR_RTYPE ; 
 int /*<<< orphan*/  MOS_WDR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_serial_port *port, __u16 reg,
				__u16 val)
{
	struct usb_device *dev = port->serial->dev;
	val = val & 0x00ff;
	FUNC0(&port->dev, "mos7840_set_reg_sync offset is %x, value %x\n", reg, val);

	return FUNC1(dev, FUNC2(dev, 0), MCS_WRREQ,
			       MCS_WR_RTYPE, val, reg, NULL, 0,
			       MOS_WDR_TIMEOUT);
}