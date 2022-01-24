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
struct zilog_channel {int dummy; } ;
struct uart_ip22zilog_port {int flags; TYPE_1__* next; int /*<<< orphan*/  port; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 unsigned char ALL_SNT ; 
 int /*<<< orphan*/  FHWRES ; 
 int IP22ZILOG_FLAG_RESET_DONE ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R9 ; 
 struct zilog_channel* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct uart_ip22zilog_port*) ; 
 unsigned char FUNC3 (struct zilog_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct zilog_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct uart_ip22zilog_port *up)
{
	struct zilog_channel *channel;
	int i;

	if (up->flags & IP22ZILOG_FLAG_RESET_DONE)
		return;

	/* Let pending transmits finish.  */
	channel = FUNC0(&up->port);
	for (i = 0; i < 1000; i++) {
		unsigned char stat = FUNC3(channel, R1);
		if (stat & ALL_SNT)
			break;
		FUNC4(100);
	}

	if (!FUNC2(up)) {
		up++;
		channel = FUNC0(&up->port);
	}
	FUNC5(channel, R9, FHWRES);
	FUNC1();
	(void) FUNC3(channel, R0);

	up->flags |= IP22ZILOG_FLAG_RESET_DONE;
	up->next->flags |= IP22ZILOG_FLAG_RESET_DONE;
}