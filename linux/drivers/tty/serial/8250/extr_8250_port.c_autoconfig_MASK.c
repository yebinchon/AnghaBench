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
struct uart_port {int flags; size_t type; scalar_t__ iotype; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; int /*<<< orphan*/  fifosize; int /*<<< orphan*/  membase; int /*<<< orphan*/  iobase; int /*<<< orphan*/  mapbase; } ;
struct uart_8250_port {unsigned int capabilities; int probe; int /*<<< orphan*/  tx_loadsz; struct uart_port port; scalar_t__ bugs; } ;
struct TYPE_2__ {unsigned int flags; unsigned char name; int /*<<< orphan*/  tx_loadsz; int /*<<< orphan*/  fifo_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char,...) ; 
 size_t PORT_16550 ; 
 size_t PORT_16550A ; 
 size_t PORT_RSA ; 
 size_t PORT_UNKNOWN ; 
 int UART_CAP_UUE ; 
 int /*<<< orphan*/  UART_EFR ; 
 int /*<<< orphan*/  UART_FCR ; 
 unsigned char UART_FCR_ENABLE_FIFO ; 
 int /*<<< orphan*/  UART_IER ; 
 unsigned char UART_IER_UUE ; 
 int /*<<< orphan*/  UART_IIR ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned char UART_LCR_CONF_MODE_B ; 
 int UART_MCR_LOOP ; 
 int /*<<< orphan*/  UART_MSR ; 
 int UART_PROBE_RSA ; 
 int /*<<< orphan*/  UART_RSA_FRR ; 
 int /*<<< orphan*/  UART_RX ; 
 int UPF_BUGGY_UART ; 
 int UPF_SKIP_TEST ; 
 scalar_t__ UPIO_PORT ; 
 scalar_t__ FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_8250_port*) ; 
 unsigned char FUNC8 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_8250_port*,unsigned char) ; 
 int FUNC10 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_8250_port*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* uart_config ; 

__attribute__((used)) static void FUNC14(struct uart_8250_port *up)
{
	unsigned char status1, scratch, scratch2, scratch3;
	unsigned char save_lcr, save_mcr;
	struct uart_port *port = &up->port;
	unsigned long flags;
	unsigned int old_capabilities;

	if (!port->iobase && !port->mapbase && !port->membase)
		return;

	FUNC0("%s: autoconf (0x%04lx, 0x%p): ",
		       port->name, port->iobase, port->membase);

	/*
	 * We really do need global IRQs disabled here - we're going to
	 * be frobbing the chips IRQ enable register to see if it exists.
	 */
	FUNC12(&port->lock, flags);

	up->capabilities = 0;
	up->bugs = 0;

	if (!(port->flags & UPF_BUGGY_UART)) {
		/*
		 * Do a simple existence test first; if we fail this,
		 * there's no point trying anything else.
		 *
		 * 0x80 is used as a nonsense port to prevent against
		 * false positives due to ISA bus float.  The
		 * assumption is that 0x80 is a non-existent port;
		 * which should be safe since include/asm/io.h also
		 * makes this assumption.
		 *
		 * Note: this is safe as long as MCR bit 4 is clear
		 * and the device is in "PC" mode.
		 */
		scratch = FUNC10(up, UART_IER);
		FUNC11(up, UART_IER, 0);
#ifdef __i386__
		outb(0xff, 0x080);
#endif
		/*
		 * Mask out IER[7:4] bits for test as some UARTs (e.g. TL
		 * 16C754B) allow only to modify them if an EFR bit is set.
		 */
		scratch2 = FUNC10(up, UART_IER) & 0x0f;
		FUNC11(up, UART_IER, 0x0F);
#ifdef __i386__
		outb(0, 0x080);
#endif
		scratch3 = FUNC10(up, UART_IER) & 0x0f;
		FUNC11(up, UART_IER, scratch);
		if (scratch2 != 0 || scratch3 != 0x0F) {
			/*
			 * We failed; there's nothing here
			 */
			FUNC13(&port->lock, flags);
			FUNC0("IER test failed (%02x, %02x) ",
				       scratch2, scratch3);
			goto out;
		}
	}

	save_mcr = FUNC8(up);
	save_lcr = FUNC10(up, UART_LCR);

	/*
	 * Check to see if a UART is really there.  Certain broken
	 * internal modems based on the Rockwell chipset fail this
	 * test, because they apparently don't implement the loopback
	 * test mode.  So this test is skipped on the COM 1 through
	 * COM 4 ports.  This *should* be safe, since no board
	 * manufacturer would be stupid enough to design a board
	 * that conflicts with COM 1-4 --- we hope!
	 */
	if (!(port->flags & UPF_SKIP_TEST)) {
		FUNC9(up, UART_MCR_LOOP | 0x0A);
		status1 = FUNC10(up, UART_MSR) & 0xF0;
		FUNC9(up, save_mcr);
		if (status1 != 0x90) {
			FUNC13(&port->lock, flags);
			FUNC0("LOOP test failed (%02x) ",
				       status1);
			goto out;
		}
	}

	/*
	 * We're pretty sure there's a port here.  Lets find out what
	 * type of port it is.  The IIR top two bits allows us to find
	 * out if it's 8250 or 16450, 16550, 16550A or later.  This
	 * determines what we test for next.
	 *
	 * We also initialise the EFR (if any) to zero for later.  The
	 * EFR occupies the same register location as the FCR and IIR.
	 */
	FUNC11(up, UART_LCR, UART_LCR_CONF_MODE_B);
	FUNC11(up, UART_EFR, 0);
	FUNC11(up, UART_LCR, 0);

	FUNC11(up, UART_FCR, UART_FCR_ENABLE_FIFO);
	scratch = FUNC10(up, UART_IIR) >> 6;

	switch (scratch) {
	case 0:
		FUNC3(up);
		break;
	case 1:
		port->type = PORT_UNKNOWN;
		break;
	case 2:
		port->type = PORT_16550;
		break;
	case 3:
		FUNC2(up);
		break;
	}

#ifdef CONFIG_SERIAL_8250_RSA
	/*
	 * Only probe for RSA ports if we got the region.
	 */
	if (port->type == PORT_16550A && up->probe & UART_PROBE_RSA &&
	    __enable_rsa(up))
		port->type = PORT_RSA;
#endif

	FUNC11(up, UART_LCR, save_lcr);

	port->fifosize = uart_config[up->port.type].fifo_size;
	old_capabilities = up->capabilities;
	up->capabilities = uart_config[port->type].flags;
	up->tx_loadsz = uart_config[port->type].tx_loadsz;

	if (port->type == PORT_UNKNOWN)
		goto out_lock;

	/*
	 * Reset the UART.
	 */
#ifdef CONFIG_SERIAL_8250_RSA
	if (port->type == PORT_RSA)
		serial_out(up, UART_RSA_FRR, 0);
#endif
	FUNC9(up, save_mcr);
	FUNC7(up);
	FUNC10(up, UART_RX);
	if (up->capabilities & UART_CAP_UUE)
		FUNC11(up, UART_IER, UART_IER_UUE);
	else
		FUNC11(up, UART_IER, 0);

out_lock:
	FUNC13(&port->lock, flags);

	/*
	 * Check if the device is a Fintek F81216A
	 */
	if (port->type == PORT_16550A && port->iotype == UPIO_PORT)
		FUNC4(up);

	if (up->capabilities != old_capabilities) {
		FUNC6("%s: detected caps %08x should be %08x\n",
			port->name, old_capabilities, up->capabilities);
	}
out:
	FUNC0("iir=%d ", scratch);
	FUNC0("type=%s\n", uart_config[port->type].name);
}