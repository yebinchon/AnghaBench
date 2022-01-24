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
struct TYPE_2__ {scalar_t__ expires; } ;
struct kgdb_nmi_tty_priv {int /*<<< orphan*/  port; int /*<<< orphan*/  fifo; TYPE_1__ timer; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct kgdb_nmi_tty_priv* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  kgdb_nmi_num_readers ; 
 scalar_t__ FUNC5 (int) ; 
 struct kgdb_nmi_tty_priv* priv ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct kgdb_nmi_tty_priv *priv = FUNC2(priv, t, timer);
	char ch;

	priv->timer.expires = jiffies + (HZ/100);
	FUNC0(&priv->timer);

	if (FUNC5(!FUNC1(&kgdb_nmi_num_readers) ||
		   !FUNC3(&priv->fifo)))
		return;

	while (FUNC4(&priv->fifo, &ch, 1))
		FUNC7(&priv->port, ch, TTY_NORMAL);
	FUNC6(&priv->port);
}