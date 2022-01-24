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
struct TYPE_3__ {int stype; int /*<<< orphan*/  sid; int /*<<< orphan*/  stype_env; int /*<<< orphan*/  type; } ;
struct vio_vcc {int /*<<< orphan*/ * data; TYPE_1__ tag; } ;
struct TYPE_4__ {int /*<<< orphan*/  lp; } ;
struct vcc_port {size_t chars_in_buffer; int /*<<< orphan*/  lock; TYPE_2__ vio; struct vio_vcc buffer; } ;
struct tty_struct {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 scalar_t__ VCC_BUFF_LEN ; 
 int VIO_TAG_SIZE ; 
 int /*<<< orphan*/  VIO_TYPE_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ,struct vio_vcc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 
 struct vcc_port* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vcc_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct vcc_port*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct tty_struct *tty, const unsigned char *buf,
		     int count)
{
	struct vcc_port *port;
	struct vio_vcc *pkt;
	unsigned long flags;
	int total_sent = 0;
	int tosend = 0;
	int rv = -EINVAL;

	if (FUNC6(!tty)) {
		FUNC3("VCC: write: Invalid TTY handle\n");
		return -ENXIO;
	}

	port = FUNC7(tty->index);
	if (FUNC6(!port)) {
		FUNC3("VCC: write: Failed to find VCC port");
		return -ENODEV;
	}

	FUNC4(&port->lock, flags);

	pkt = &port->buffer;
	pkt->tag.type = VIO_TYPE_DATA;

	while (count > 0) {
		/* Minimum of data to write and space available */
		tosend = FUNC2(count, (VCC_BUFF_LEN - port->chars_in_buffer));

		if (!tosend)
			break;

		FUNC1(&pkt->data[port->chars_in_buffer], &buf[total_sent],
		       tosend);
		port->chars_in_buffer += tosend;
		pkt->tag.stype = tosend;

		FUNC10("TAG [%02x:%02x:%04x:%08x]\n", pkt->tag.type,
		       pkt->tag.stype, pkt->tag.stype_env, pkt->tag.sid);
		FUNC10("DATA [%s]\n", *pkt->data);
		FUNC11(port->vio.lp);

		/* Since we know we have enough room in VCC buffer for tosend
		 * we record that it was sent regardless of whether the
		 * hypervisor actually took it because we have it buffered.
		 */
		rv = FUNC0(port->vio.lp, pkt, (VIO_TAG_SIZE + tosend));
		FUNC10("VCC: write: ldc_write(%d)=%d\n",
		       (VIO_TAG_SIZE + tosend), rv);

		total_sent += tosend;
		count -= tosend;
		if (rv < 0) {
			FUNC8(port);
			break;
		}

		port->chars_in_buffer = 0;
	}

	FUNC5(&port->lock, flags);

	FUNC9(port, false);

	FUNC10("VCC: write: total=%d rv=%d", total_sent, rv);

	return total_sent ? total_sent : rv;
}