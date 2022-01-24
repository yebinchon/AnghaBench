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
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct ti_port {unsigned int tp_shadow_mcr; int /*<<< orphan*/  tp_lock; } ;

/* Variables and functions */
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_LOOP ; 
 unsigned int TIOCM_RTS ; 
 unsigned int TI_MCR_DTR ; 
 unsigned int TI_MCR_LOOP ; 
 unsigned int TI_MCR_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct ti_port*,unsigned int) ; 
 struct ti_port* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
				unsigned int set, unsigned int clear)
{
	struct usb_serial_port *port = tty->driver_data;
	struct ti_port *tport = FUNC3(port);
	unsigned int mcr;
	unsigned long flags;

	FUNC0(&tport->tp_lock, flags);
	mcr = tport->tp_shadow_mcr;

	if (set & TIOCM_RTS)
		mcr |= TI_MCR_RTS;
	if (set & TIOCM_DTR)
		mcr |= TI_MCR_DTR;
	if (set & TIOCM_LOOP)
		mcr |= TI_MCR_LOOP;

	if (clear & TIOCM_RTS)
		mcr &= ~TI_MCR_RTS;
	if (clear & TIOCM_DTR)
		mcr &= ~TI_MCR_DTR;
	if (clear & TIOCM_LOOP)
		mcr &= ~TI_MCR_LOOP;
	FUNC1(&tport->tp_lock, flags);

	return FUNC2(tport, mcr);
}