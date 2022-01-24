#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sc16is7xx_one_config {int flags; int /*<<< orphan*/  ier_clear; } ;
struct TYPE_3__ {int mctrl; int /*<<< orphan*/  lock; } ;
struct sc16is7xx_one {TYPE_1__ port; struct sc16is7xx_one_config config; } ;
struct kthread_work {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SC16IS7XX_IER_REG ; 
 int /*<<< orphan*/  SC16IS7XX_MCR_DTR_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_MCR_LOOP_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_MCR_REG ; 
 int /*<<< orphan*/  SC16IS7XX_MCR_RTS_BIT ; 
 int SC16IS7XX_RECONF_IER ; 
 int SC16IS7XX_RECONF_MD ; 
 int SC16IS7XX_RECONF_RS485 ; 
 int TIOCM_DTR ; 
 int TIOCM_LOOP ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct sc16is7xx_one_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reg_work ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sc16is7xx_one* FUNC5 (struct kthread_work*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct kthread_work *ws)
{
	struct sc16is7xx_one *one = FUNC5(ws, reg_work);
	struct sc16is7xx_one_config config;
	unsigned long irqflags;

	FUNC3(&one->port.lock, irqflags);
	config = one->config;
	FUNC0(&one->config, 0, sizeof(one->config));
	FUNC4(&one->port.lock, irqflags);

	if (config.flags & SC16IS7XX_RECONF_MD) {
		FUNC1(&one->port, SC16IS7XX_MCR_REG,
				      SC16IS7XX_MCR_LOOP_BIT,
				      (one->port.mctrl & TIOCM_LOOP) ?
				      SC16IS7XX_MCR_LOOP_BIT : 0);
		FUNC1(&one->port, SC16IS7XX_MCR_REG,
				      SC16IS7XX_MCR_RTS_BIT,
				      (one->port.mctrl & TIOCM_RTS) ?
				      SC16IS7XX_MCR_RTS_BIT : 0);
		FUNC1(&one->port, SC16IS7XX_MCR_REG,
				      SC16IS7XX_MCR_DTR_BIT,
				      (one->port.mctrl & TIOCM_DTR) ?
				      SC16IS7XX_MCR_DTR_BIT : 0);
	}
	if (config.flags & SC16IS7XX_RECONF_IER)
		FUNC1(&one->port, SC16IS7XX_IER_REG,
				      config.ier_clear, 0);

	if (config.flags & SC16IS7XX_RECONF_RS485)
		FUNC2(&one->port);
}