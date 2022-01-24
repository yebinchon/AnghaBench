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
struct db1x_pcmcia_sock {int stschg_irq; scalar_t__ board_type; int insert_irq; int eject_irq; } ;

/* Variables and functions */
 scalar_t__ BOARD_TYPE_DB1200 ; 
 scalar_t__ BOARD_TYPE_DB1300 ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_BOTH ; 
 int /*<<< orphan*/  db1000_pcmcia_cdirq ; 
 int /*<<< orphan*/  db1000_pcmcia_stschgirq ; 
 int /*<<< orphan*/  db1200_pcmcia_cdirq ; 
 int /*<<< orphan*/  db1200_pcmcia_cdirq_fn ; 
 scalar_t__ FUNC0 (struct db1x_pcmcia_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct db1x_pcmcia_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct db1x_pcmcia_sock*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct db1x_pcmcia_sock*) ; 

__attribute__((used)) static int FUNC6(struct db1x_pcmcia_sock *sock)
{
	int ret;

	if (sock->stschg_irq != -1) {
		ret = FUNC4(sock->stschg_irq, db1000_pcmcia_stschgirq,
				  0, "pcmcia_stschg", sock);
		if (ret)
			return ret;
	}

	/* Db/Pb1200 have separate per-socket insertion and ejection
	 * interrupts, which should show edge behaviour but don't.
	 * So interrupts are disabled until both insertion and
	 * ejection handler have been registered and the currently
	 * active one disabled.
	 */
	if ((sock->board_type == BOARD_TYPE_DB1200) ||
	    (sock->board_type == BOARD_TYPE_DB1300)) {
		ret = FUNC5(sock->insert_irq, db1200_pcmcia_cdirq,
			db1200_pcmcia_cdirq_fn, 0, "pcmcia_insert", sock);
		if (ret)
			goto out1;

		ret = FUNC5(sock->eject_irq, db1200_pcmcia_cdirq,
			db1200_pcmcia_cdirq_fn, 0, "pcmcia_eject", sock);
		if (ret) {
			FUNC2(sock->insert_irq, sock);
			goto out1;
		}

		/* enable the currently silent one */
		if (FUNC0(sock))
			FUNC1(sock->eject_irq);
		else
			FUNC1(sock->insert_irq);
	} else {
		/* all other (older) Db1x00 boards use a GPIO to show
		 * card detection status:  use both-edge triggers.
		 */
		FUNC3(sock->insert_irq, IRQ_TYPE_EDGE_BOTH);
		ret = FUNC4(sock->insert_irq, db1000_pcmcia_cdirq,
				  0, "pcmcia_carddetect", sock);

		if (ret)
			goto out1;
	}

	return 0;	/* all done */

out1:
	if (sock->stschg_irq != -1)
		FUNC2(sock->stschg_irq, sock);

	return ret;
}