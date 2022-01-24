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
struct TYPE_4__ {TYPE_1__* state; } ;
struct uart_8250_port {TYPE_2__ port; } ;
struct timer_list {int dummy; } ;
struct aspeed_vuart {int /*<<< orphan*/  unthrottle_timer; struct uart_8250_port* port; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct aspeed_vuart* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ unthrottle_timeout ; 
 int /*<<< orphan*/  unthrottle_timer ; 
 struct aspeed_vuart* vuart ; 

__attribute__((used)) static void FUNC4(struct timer_list *timer)
{
	struct aspeed_vuart *vuart = FUNC1(vuart, timer, unthrottle_timer);
	struct uart_8250_port *up = vuart->port;

	if (!FUNC3(&up->port.state->port)) {
		FUNC2(&vuart->unthrottle_timer,
			  jiffies + unthrottle_timeout);
		return;
	}

	FUNC0(&up->port);
}