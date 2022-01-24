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
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ state; } ;
struct pnx8xxx_port {int /*<<< orphan*/  timer; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ MCTRL_TIMEOUT ; 
 struct pnx8xxx_port* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pnx8xxx_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pnx8xxx_port* sport ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct pnx8xxx_port *sport = FUNC0(sport, t, timer);
	unsigned long flags;

	if (sport->port.state) {
		FUNC3(&sport->port.lock, flags);
		FUNC2(sport);
		FUNC4(&sport->port.lock, flags);

		FUNC1(&sport->timer, jiffies + MCTRL_TIMEOUT);
	}
}