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
struct zilog_channel {int /*<<< orphan*/  control; } ;
struct TYPE_4__ {TYPE_1__* state; int /*<<< orphan*/  lock; } ;
struct uart_ip22zilog_port {struct uart_ip22zilog_port* next; TYPE_2__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned char CHAEXT ; 
 unsigned char CHARxIP ; 
 unsigned char CHATxIP ; 
 unsigned char CHBEXT ; 
 unsigned char CHBRxIP ; 
 unsigned char CHBTxIP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  RES_H_IUS ; 
 struct zilog_channel* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct zilog_channel*) ; 
 int FUNC3 (struct uart_ip22zilog_port*,struct zilog_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_ip22zilog_port*,struct zilog_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_ip22zilog_port*,struct zilog_channel*) ; 
 unsigned char FUNC6 (struct zilog_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct uart_ip22zilog_port *up = dev_id;

	while (up) {
		struct zilog_channel *channel
			= FUNC0(&up->port);
		unsigned char r3;
		bool push = false;

		FUNC7(&up->port.lock);
		r3 = FUNC6(channel, R3);

		/* Channel A */
		if (r3 & (CHAEXT | CHATxIP | CHARxIP)) {
			FUNC10(RES_H_IUS, &channel->control);
			FUNC1();
			FUNC2(channel);

			if (r3 & CHARxIP)
				push = FUNC3(up, channel);
			if (r3 & CHAEXT)
				FUNC4(up, channel);
			if (r3 & CHATxIP)
				FUNC5(up, channel);
		}
		FUNC8(&up->port.lock);

		if (push)
			FUNC9(&up->port.state->port);

		/* Channel B */
		up = up->next;
		channel = FUNC0(&up->port);
		push = false;

		FUNC7(&up->port.lock);
		if (r3 & (CHBEXT | CHBTxIP | CHBRxIP)) {
			FUNC10(RES_H_IUS, &channel->control);
			FUNC1();
			FUNC2(channel);

			if (r3 & CHBRxIP)
				push = FUNC3(up, channel);
			if (r3 & CHBEXT)
				FUNC4(up, channel);
			if (r3 & CHBTxIP)
				FUNC5(up, channel);
		}
		FUNC8(&up->port.lock);

		if (push)
			FUNC9(&up->port.state->port);

		up = up->next;
	}

	return IRQ_HANDLED;
}