#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  attr; } ;
struct usbport_trig_port {struct usbport_trig_port* port_name; TYPE_2__ attr; int /*<<< orphan*/  list; } ;
struct usbport_trig_data {struct led_classdev* led_cdev; } ;
struct led_classdev {TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbport_trig_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__ ports_group ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usbport_trig_data *usbport_data,
				     struct usbport_trig_port *port)
{
	struct led_classdev *led_cdev = usbport_data->led_cdev;

	FUNC1(&port->list);
	FUNC2(&led_cdev->dev->kobj, &port->attr.attr,
				     ports_group.name);
	FUNC0(port->port_name);
	FUNC0(port);
}