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
struct tty_struct {struct gsm_dlci* driver_data; } ;
struct tty_port {int /*<<< orphan*/  count; } ;
struct gsm_dlci {scalar_t__ modem_rx; struct tty_port port; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gsm_dlci*) ; 
 int FUNC1 (struct tty_port*,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*,struct tty_struct*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, struct file *filp)
{
	struct gsm_dlci *dlci = tty->driver_data;
	struct tty_port *port = &dlci->port;

	port->count++;
	FUNC3(port, tty);

	dlci->modem_rx = 0;
	/* We could in theory open and close before we wait - eg if we get
	   a DM straight back. This is ok as that will have caused a hangup */
	FUNC2(port, 1);
	/* Start sending off SABM messages */
	FUNC0(dlci);
	/* And wait for virtual carrier */
	return FUNC1(port, tty, filp);
}