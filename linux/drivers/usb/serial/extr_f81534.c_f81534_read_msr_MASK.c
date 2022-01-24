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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {int dummy; } ;
struct f81534_port_private {int /*<<< orphan*/  msr_lock; int /*<<< orphan*/  shadow_msr; } ;

/* Variables and functions */
 int /*<<< orphan*/  F81534_MODEM_STATUS_REG ; 
 int FUNC0 (struct usb_serial_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct f81534_port_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port)
{
	struct f81534_port_private *port_priv = FUNC3(port);
	unsigned long flags;
	int status;
	u8 msr;

	/* Get MSR initial value */
	status = FUNC0(port, F81534_MODEM_STATUS_REG, &msr);
	if (status)
		return status;

	/* Force update current state */
	FUNC1(&port_priv->msr_lock, flags);
	port_priv->shadow_msr = msr;
	FUNC2(&port_priv->msr_lock, flags);

	return 0;
}