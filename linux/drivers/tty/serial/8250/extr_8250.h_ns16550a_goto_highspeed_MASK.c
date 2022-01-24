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
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned char) ; 
 unsigned char FUNC1 (struct uart_8250_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,int,unsigned char) ; 

__attribute__((used)) static inline int FUNC3(struct uart_8250_port *up)
{
	unsigned char status;

	status = FUNC1(up, 0x04); /* EXCR2 */
#define PRESL(x) ((x) & 0x30)
	if (PRESL(status) == 0x10) {
		/* already in high speed mode */
		return 0;
	} else {
		status &= ~0xB0; /* Disable LOCK, mask out PRESL[01] */
		status |= 0x10;  /* 1.625 divisor for baud_base --> 921600 */
		FUNC2(up, 0x04, status);
	}
	return 1;
}