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
typedef  int u64 ;
struct tty_struct {struct mxser_port* driver_data; } ;
struct mxser_port {long max_baud; int baud_base; int timeout; unsigned char MCR; scalar_t__ ioaddr; scalar_t__ xmit_fifo_size; } ;

/* Variables and functions */
 scalar_t__ BOTHER ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int HZ ; 
 scalar_t__ UART_DLL ; 
 scalar_t__ UART_DLM ; 
 scalar_t__ UART_LCR ; 
 unsigned char UART_LCR_DLAB ; 
 scalar_t__ UART_MCR ; 
 unsigned char UART_MCR_DTR ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 unsigned char FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty, long newspd)
{
	struct mxser_port *info = tty->driver_data;
	unsigned int quot = 0, baud;
	unsigned char cval;
	u64 timeout;

	if (!info->ioaddr)
		return -1;

	if (newspd > info->max_baud)
		return -1;

	if (newspd == 134) {
		quot = 2 * info->baud_base / 269;
		FUNC5(tty, 134, 134);
	} else if (newspd) {
		quot = info->baud_base / newspd;
		if (quot == 0)
			quot = 1;
		baud = info->baud_base/quot;
		FUNC5(tty, baud, baud);
	} else {
		quot = 0;
	}

	/*
	 * worst case (128 * 1000 * 10 * 18432) needs 35 bits, so divide in the
	 * u64 domain
	 */
	timeout = (u64)info->xmit_fifo_size * HZ * 10 * quot;
	FUNC1(timeout, info->baud_base);
	info->timeout = timeout + HZ / 50; /* Add .02 seconds of slop */

	if (quot) {
		info->MCR |= UART_MCR_DTR;
		FUNC4(info->MCR, info->ioaddr + UART_MCR);
	} else {
		info->MCR &= ~UART_MCR_DTR;
		FUNC4(info->MCR, info->ioaddr + UART_MCR);
		return 0;
	}

	cval = FUNC2(info->ioaddr + UART_LCR);

	FUNC4(cval | UART_LCR_DLAB, info->ioaddr + UART_LCR);	/* set DLAB */

	FUNC4(quot & 0xff, info->ioaddr + UART_DLL);	/* LS of divisor */
	FUNC4(quot >> 8, info->ioaddr + UART_DLM);	/* MS of divisor */
	FUNC4(cval, info->ioaddr + UART_LCR);	/* reset DLAB */

#ifdef BOTHER
	if (C_BAUD(tty) == BOTHER) {
		quot = info->baud_base % newspd;
		quot *= 8;
		if (quot % newspd > newspd / 2) {
			quot /= newspd;
			quot++;
		} else
			quot /= newspd;

		mxser_set_must_enum_value(info->ioaddr, quot);
	} else
#endif
		FUNC3(info->ioaddr, 0);

	return 0;
}