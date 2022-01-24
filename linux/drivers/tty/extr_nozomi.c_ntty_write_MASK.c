#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int index; struct port* driver_data; } ;
struct TYPE_3__ {scalar_t__ CTS; } ;
struct port {TYPE_1__ ctrl_dl; int /*<<< orphan*/  fifo_ul; } ;
struct nozomi {int /*<<< orphan*/  spin_mutex; TYPE_2__* pdev; struct port* port; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int MAX_PORT ; 
 size_t PORT_MDM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct nozomi*) ; 
 struct nozomi* FUNC3 (struct tty_struct*) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty, const unsigned char *buffer,
		      int count)
{
	int rval = -EINVAL;
	struct nozomi *dc = FUNC3(tty);
	struct port *port = tty->driver_data;
	unsigned long flags;

	/* DBG1( "WRITEx: %d, index = %d", count, index); */

	if (!dc || !port)
		return -ENODEV;

	rval = FUNC4(&port->fifo_ul, (unsigned char *)buffer, count);

	FUNC5(&dc->spin_mutex, flags);
	/* CTS is only valid on the modem channel */
	if (port == &(dc->port[PORT_MDM])) {
		if (port->ctrl_dl.CTS) {
			FUNC0("Enable interrupt");
			FUNC2(tty->index % MAX_PORT, dc);
		} else {
			FUNC1(&dc->pdev->dev,
				"CTS not active on modem port?\n");
		}
	} else {
		FUNC2(tty->index % MAX_PORT, dc);
	}
	FUNC6(&dc->spin_mutex, flags);

	return rval;
}