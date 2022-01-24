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
struct old_serial_port {int baud_base; int /*<<< orphan*/  irq; scalar_t__ port; } ;
struct TYPE_2__ {scalar_t__ port_tts; } ;

/* Variables and functions */
 int FUNC0 (struct old_serial_port*) ; 
 int B9600 ; 
 int CLOCAL ; 
 int CREAD ; 
 int CS8 ; 
 int CSIZE ; 
 int CSTOPB ; 
 int HUPCL ; 
 int PARENB ; 
 int PARODD ; 
 scalar_t__ UART_DLL ; 
 scalar_t__ UART_DLM ; 
 scalar_t__ UART_IER ; 
 scalar_t__ UART_LCR ; 
 unsigned int UART_LCR_DLAB ; 
 unsigned int UART_LCR_EPAR ; 
 unsigned int UART_LCR_PARITY ; 
 scalar_t__ UART_LSR ; 
 scalar_t__ UART_MCR ; 
 unsigned int UART_MCR_DTR ; 
 unsigned int UART_MCR_RTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ioport_resource ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int) ; 
 struct old_serial_port* rs_table ; 
 struct old_serial_port const* serstate ; 
 TYPE_1__ speakup_info ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int FUNC9 (scalar_t__,int) ; 

const struct old_serial_port *FUNC10(int index)
{
	int baud = 9600, quot = 0;
	unsigned int cval = 0;
	int cflag = CREAD | HUPCL | CLOCAL | B9600 | CS8;
	const struct old_serial_port *ser;
	int err;

	if (index >= FUNC0(rs_table)) {
		FUNC5("no port info for ttyS%d\n", index);
		return NULL;
	}
	ser = rs_table + index;

	/*	Divisor, bytesize and parity */
	quot = ser->baud_base / baud;
	cval = cflag & (CSIZE | CSTOPB);
#if defined(__powerpc__) || defined(__alpha__)
	cval >>= 8;
#else /* !__powerpc__ && !__alpha__ */
	cval >>= 4;
#endif /* !__powerpc__ && !__alpha__ */
	if (cflag & PARENB)
		cval |= UART_LCR_PARITY;
	if (!(cflag & PARODD))
		cval |= UART_LCR_EPAR;
	if (FUNC9(ser->port, 8)) {
		/* try to take it back. */
		FUNC5("Ports not available, trying to steal them\n");
		FUNC1(&ioport_resource, ser->port, 8);
		err = FUNC9(ser->port, 8);
		if (err) {
			FUNC6("Unable to allocate port at %x, errno %i",
				ser->port, err);
			return NULL;
		}
	}

	/*	Disable UART interrupts, set DTR and RTS high
	 *	and set speed.
	 */
	FUNC4(cval | UART_LCR_DLAB, ser->port + UART_LCR);	/* set DLAB */
	FUNC4(quot & 0xff, ser->port + UART_DLL);	/* LS of divisor */
	FUNC4(quot >> 8, ser->port + UART_DLM);		/* MS of divisor */
	FUNC4(cval, ser->port + UART_LCR);		/* reset DLAB */

	/* Turn off Interrupts */
	FUNC4(0, ser->port + UART_IER);
	FUNC4(UART_MCR_DTR | UART_MCR_RTS, ser->port + UART_MCR);

	/* If we read 0xff from the LSR, there is no UART here. */
	if (FUNC2(ser->port + UART_LSR) == 0xff) {
		FUNC8(ser->port, 8);
		serstate = NULL;
		return NULL;
	}

	FUNC3(1);
	speakup_info.port_tts = ser->port;
	serstate = ser;

	FUNC7(ser->irq);

	return ser;
}