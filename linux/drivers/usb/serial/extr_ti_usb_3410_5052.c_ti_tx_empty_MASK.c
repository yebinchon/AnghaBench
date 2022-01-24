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
typedef  int u8 ;
struct usb_serial_port {int dummy; } ;
struct ti_port {int dummy; } ;

/* Variables and functions */
 int TI_LSR_TX_EMPTY ; 
 int FUNC0 (struct ti_port*,int*) ; 
 struct ti_port* FUNC1 (struct usb_serial_port*) ; 

__attribute__((used)) static bool FUNC2(struct usb_serial_port *port)
{
	struct ti_port *tport = FUNC1(port);
	int ret;
	u8 lsr;

	ret = FUNC0(tport, &lsr);
	if (!ret && !(lsr & TI_LSR_TX_EMPTY))
		return false;

	return true;
}