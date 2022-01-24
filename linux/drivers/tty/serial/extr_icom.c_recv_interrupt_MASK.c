#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct uart_icount {short rx; int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; } ;
struct tty_port {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; struct uart_icount icount; TYPE_1__* state; } ;
struct icom_port {short next_rcv; unsigned long recv_buf_pci; int* recv_buf; unsigned short ignore_status_mask; unsigned short read_status_mask; TYPE_4__ uart_port; TYPE_3__* statStg; } ;
struct TYPE_7__ {TYPE_2__* rcv; } ;
struct TYPE_6__ {unsigned short WorkingLength; scalar_t__ flags; scalar_t__ leLength; int /*<<< orphan*/  leBuffer; } ;
struct TYPE_5__ {struct tty_port port; } ;

/* Variables and functions */
 short NUM_RBUFFS ; 
 scalar_t__ RCV_BUFF_SZ ; 
 unsigned short SA_FLAGS_BREAK_DET ; 
 unsigned short SA_FLAGS_FRAME_ERROR ; 
 unsigned short SA_FLAGS_OVERRUN ; 
 unsigned short SA_FLAGS_PARITY_ERROR ; 
 unsigned short SA_FL_RCV_DONE ; 
 unsigned char TTY_BREAK ; 
 unsigned char TTY_FRAME ; 
 unsigned char TTY_NORMAL ; 
 unsigned char TTY_OVERRUN ; 
 unsigned char TTY_PARITY ; 
 void* FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct icom_port*,char*,short) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_port*,int*,short) ; 

__attribute__((used)) static void FUNC8(u16 port_int_reg, struct icom_port *icom_port)
{
	short int count, rcv_buff;
	struct tty_port *port = &icom_port->uart_port.state->port;
	unsigned short int status;
	struct uart_icount *icount;
	unsigned long offset;
	unsigned char flag;

	FUNC4(icom_port, "RCV_COMPLETE", 0);
	rcv_buff = icom_port->next_rcv;

	status = FUNC0(icom_port->statStg->rcv[rcv_buff].flags);
	while (status & SA_FL_RCV_DONE) {
		int first = -1;

		FUNC4(icom_port, "FID_STATUS", status);
		count = FUNC0(icom_port->statStg->rcv[rcv_buff].leLength);

		FUNC4(icom_port, "RCV_COUNT", count);

		FUNC4(icom_port, "REAL_COUNT", count);

		offset =
			FUNC1(icom_port->statStg->rcv[rcv_buff].leBuffer) -
			icom_port->recv_buf_pci;

		/* Block copy all but the last byte as this may have status */
		if (count > 0) {
			first = icom_port->recv_buf[offset];
			FUNC7(port, icom_port->recv_buf + offset, count - 1);
		}

		icount = &icom_port->uart_port.icount;
		icount->rx += count;

		/* Break detect logic */
		if ((status & SA_FLAGS_FRAME_ERROR)
		    && first == 0) {
			status &= ~SA_FLAGS_FRAME_ERROR;
			status |= SA_FLAGS_BREAK_DET;
			FUNC4(icom_port, "BREAK_DET", 0);
		}

		flag = TTY_NORMAL;

		if (status &
		    (SA_FLAGS_BREAK_DET | SA_FLAGS_PARITY_ERROR |
		     SA_FLAGS_FRAME_ERROR | SA_FLAGS_OVERRUN)) {

			if (status & SA_FLAGS_BREAK_DET)
				icount->brk++;
			if (status & SA_FLAGS_PARITY_ERROR)
				icount->parity++;
			if (status & SA_FLAGS_FRAME_ERROR)
				icount->frame++;
			if (status & SA_FLAGS_OVERRUN)
				icount->overrun++;

			/*
			 * Now check to see if character should be
			 * ignored, and mask off conditions which
			 * should be ignored.
			 */
			if (status & icom_port->ignore_status_mask) {
				FUNC4(icom_port, "IGNORE_CHAR", 0);
				goto ignore_char;
			}

			status &= icom_port->read_status_mask;

			if (status & SA_FLAGS_BREAK_DET) {
				flag = TTY_BREAK;
			} else if (status & SA_FLAGS_PARITY_ERROR) {
				FUNC4(icom_port, "PARITY_ERROR", 0);
				flag = TTY_PARITY;
			} else if (status & SA_FLAGS_FRAME_ERROR)
				flag = TTY_FRAME;

		}

		FUNC6(port, *(icom_port->recv_buf + offset + count - 1), flag);

		if (status & SA_FLAGS_OVERRUN)
			/*
			 * Overrun is special, since it's
			 * reported immediately, and doesn't
			 * affect the current character
			 */
			FUNC6(port, 0, TTY_OVERRUN);
ignore_char:
		icom_port->statStg->rcv[rcv_buff].flags = 0;
		icom_port->statStg->rcv[rcv_buff].leLength = 0;
		icom_port->statStg->rcv[rcv_buff].WorkingLength =
			(unsigned short int) FUNC0(RCV_BUFF_SZ);

		rcv_buff++;
		if (rcv_buff == NUM_RBUFFS)
			rcv_buff = 0;

		status = FUNC0(icom_port->statStg->rcv[rcv_buff].flags);
	}
	icom_port->next_rcv = rcv_buff;

	FUNC3(&icom_port->uart_port.lock);
	FUNC5(port);
	FUNC2(&icom_port->uart_port.lock);
}