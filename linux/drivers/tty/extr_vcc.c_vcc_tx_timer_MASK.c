#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int stype; int /*<<< orphan*/  type; } ;
struct vio_vcc {TYPE_2__ tag; } ;
struct TYPE_6__ {int /*<<< orphan*/  lp; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct vcc_port {int /*<<< orphan*/  lock; scalar_t__ chars_in_buffer; struct tty_struct* tty; TYPE_3__ vio; struct vio_vcc buffer; scalar_t__ removed; TYPE_1__ tx_timer; } ;
struct tty_struct {int dummy; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCC_BUFF_LEN ; 
 scalar_t__ VIO_TAG_SIZE ; 
 int /*<<< orphan*/  VIO_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vcc_port* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vio_vcc*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct vcc_port* port ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 int /*<<< orphan*/  tx_timer ; 
 int /*<<< orphan*/  FUNC7 (struct vcc_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct vcc_port*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct timer_list *t)
{
	struct vcc_port *port = FUNC1(port, t, tx_timer);
	struct vio_vcc *pkt;
	unsigned long flags;
	int tosend = 0;
	int rv;

	FUNC4(&port->lock, flags);
	port->tx_timer.expires = 0;

	if (!port->tty || port->removed)
		goto done;

	tosend = FUNC3(VCC_BUFF_LEN, port->chars_in_buffer);
	if (!tosend)
		goto done;

	pkt = &port->buffer;
	pkt->tag.type = VIO_TYPE_DATA;
	pkt->tag.stype = tosend;
	FUNC10(port->vio.lp);

	rv = FUNC2(port->vio.lp, pkt, (VIO_TAG_SIZE + tosend));
	FUNC0(!rv);

	if (rv < 0) {
		FUNC9("VCC: ldc_write()=%d\n", rv);
		FUNC7(port);
	} else {
		struct tty_struct *tty = port->tty;

		port->chars_in_buffer = 0;
		if (tty)
			FUNC6(tty);
	}

done:
	FUNC5(&port->lock, flags);
	FUNC8(port, false);
}