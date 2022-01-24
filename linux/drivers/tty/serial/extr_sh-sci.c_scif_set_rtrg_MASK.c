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
struct uart_port {int fifosize; int type; } ;
struct TYPE_2__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSRTRGR ; 
#define  PORT_SCIF 130 
#define  PORT_SCIFA 129 
#define  PORT_SCIFB 128 
 int /*<<< orphan*/  SCFCR ; 
 unsigned int SCFCR_RTRG0 ; 
 unsigned int SCFCR_RTRG1 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__* FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port, int rx_trig)
{
	unsigned int bits;

	if (rx_trig < 1)
		rx_trig = 1;
	if (rx_trig >= port->fifosize)
		rx_trig = port->fifosize;

	/* HSCIF can be set to an arbitrary level. */
	if (FUNC1(port, HSRTRGR)->size) {
		FUNC3(port, HSRTRGR, rx_trig);
		return rx_trig;
	}

	switch (port->type) {
	case PORT_SCIF:
		if (rx_trig < 4) {
			bits = 0;
			rx_trig = 1;
		} else if (rx_trig < 8) {
			bits = SCFCR_RTRG0;
			rx_trig = 4;
		} else if (rx_trig < 14) {
			bits = SCFCR_RTRG1;
			rx_trig = 8;
		} else {
			bits = SCFCR_RTRG0 | SCFCR_RTRG1;
			rx_trig = 14;
		}
		break;
	case PORT_SCIFA:
	case PORT_SCIFB:
		if (rx_trig < 16) {
			bits = 0;
			rx_trig = 1;
		} else if (rx_trig < 32) {
			bits = SCFCR_RTRG0;
			rx_trig = 16;
		} else if (rx_trig < 48) {
			bits = SCFCR_RTRG1;
			rx_trig = 32;
		} else {
			bits = SCFCR_RTRG0 | SCFCR_RTRG1;
			rx_trig = 48;
		}
		break;
	default:
		FUNC0(1, "unknown FIFO configuration");
		return 1;
	}

	FUNC3(port, SCFCR,
		(FUNC2(port, SCFCR) &
		~(SCFCR_RTRG1 | SCFCR_RTRG0)) | bits);

	return rx_trig;
}