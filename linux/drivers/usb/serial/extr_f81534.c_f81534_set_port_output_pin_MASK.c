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
typedef  size_t u8 ;
struct usb_serial_port {int /*<<< orphan*/  dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct f81534_serial_private {size_t* conf_data; } ;
struct f81534_port_private {size_t phy_num; } ;
struct f81534_port_out_pin {TYPE_1__* pin; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_mask; int /*<<< orphan*/  reg_addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (int) ; 
 size_t F81534_CONF_GPIO_RS232 ; 
 size_t F81534_CONF_GPIO_SHUTDOWN ; 
 size_t F81534_CONF_INIT_GPIO_OFFSET ; 
 size_t F81534_CONF_WORK_GPIO_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 struct f81534_port_out_pin* f81534_port_out_pins ; 
 int FUNC3 (struct usb_serial*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f81534_serial_private* FUNC4 (struct usb_serial*) ; 
 struct f81534_port_private* FUNC5 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC6(struct usb_serial_port *port)
{
	struct f81534_serial_private *serial_priv;
	struct f81534_port_private *port_priv;
	struct usb_serial *serial;
	const struct f81534_port_out_pin *pins;
	int status;
	int i;
	u8 value;
	u8 idx;

	serial = port->serial;
	serial_priv = FUNC4(serial);
	port_priv = FUNC5(port);

	idx = F81534_CONF_INIT_GPIO_OFFSET + port_priv->phy_num;
	value = serial_priv->conf_data[idx];
	if (value >= F81534_CONF_GPIO_SHUTDOWN) {
		/*
		 * Newer IC configure will make transceiver in shutdown mode on
		 * initial power on. We need enable it before using UARTs.
		 */
		idx = F81534_CONF_WORK_GPIO_OFFSET + port_priv->phy_num;
		value = serial_priv->conf_data[idx];
		if (value >= F81534_CONF_GPIO_SHUTDOWN)
			value = F81534_CONF_GPIO_RS232;
	}

	pins = &f81534_port_out_pins[port_priv->phy_num];

	for (i = 0; i < FUNC0(pins->pin); ++i) {
		status = FUNC3(serial,
				pins->pin[i].reg_addr, pins->pin[i].reg_mask,
				value & FUNC1(i) ? pins->pin[i].reg_mask : 0);
		if (status)
			return status;
	}

	FUNC2(&port->dev, "Output pin (M0/M1/M2): %d\n", value);
	return 0;
}