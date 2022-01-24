#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_7__ {struct fwtty_port* callback_data; int /*<<< orphan*/  address_callback; scalar_t__ length; } ;
struct fwtty_port {int loopback; struct fwtty_port** ports; TYPE_1__ port; int /*<<< orphan*/  kref; int /*<<< orphan*/  index; int /*<<< orphan*/  list; int /*<<< orphan*/  debugfs; struct device* device; TYPE_5__ rx_handler; int /*<<< orphan*/  peer; int /*<<< orphan*/  tx_fifo; int /*<<< orphan*/  max_payload; int /*<<< orphan*/  wait_tx; int /*<<< orphan*/  hangup; int /*<<< orphan*/  emit_breaks; int /*<<< orphan*/  drain; int /*<<< orphan*/  lock; struct fwtty_port* serial; int /*<<< orphan*/  peer_list; struct fw_card* card; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;
struct fw_serial {int loopback; struct fw_serial** ports; TYPE_1__ port; int /*<<< orphan*/  kref; int /*<<< orphan*/  index; int /*<<< orphan*/  list; int /*<<< orphan*/  debugfs; struct device* device; TYPE_5__ rx_handler; int /*<<< orphan*/  peer; int /*<<< orphan*/  tx_fifo; int /*<<< orphan*/  max_payload; int /*<<< orphan*/  wait_tx; int /*<<< orphan*/  hangup; int /*<<< orphan*/  emit_breaks; int /*<<< orphan*/  drain; int /*<<< orphan*/  lock; struct fw_serial* serial; int /*<<< orphan*/  peer_list; struct fw_card* card; } ;
struct fw_device {struct fw_card* card; } ;
struct fw_card {scalar_t__ guid; int /*<<< orphan*/ * device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FWTTY_INVALID_INDEX ; 
 scalar_t__ FWTTY_PORT_RXFIFO_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCODE_100 ; 
 scalar_t__ create_loop_dev ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ,struct fwtty_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fw_high_memory_region ; 
 struct fw_device* FUNC13 (struct fw_unit*) ; 
 int /*<<< orphan*/  fwloop_driver ; 
 int FUNC14 (struct fwtty_port*,struct fw_unit*) ; 
 int /*<<< orphan*/  fwserial_debugfs ; 
 int /*<<< orphan*/  fwserial_destroy ; 
 int /*<<< orphan*/  fwserial_list ; 
 int /*<<< orphan*/  fwtty_do_hangup ; 
 int /*<<< orphan*/  fwtty_drain_tx ; 
 int /*<<< orphan*/  fwtty_driver ; 
 int /*<<< orphan*/  fwtty_emit_breaks ; 
 int /*<<< orphan*/  FUNC15 (struct fw_unit**,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct fw_unit**,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  fwtty_peers_fops ; 
 int /*<<< orphan*/  fwtty_port_handler ; 
 int /*<<< orphan*/  fwtty_port_ops ; 
 int FUNC17 (struct fwtty_port*) ; 
 int /*<<< orphan*/  fwtty_stats_fops ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fwtty_port* FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct fwtty_port*) ; 
 int num_ports ; 
 int num_ttys ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*) ; 
 struct device* FUNC31 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC33(struct fw_unit *unit)
{
	struct fw_device *parent = FUNC13(unit);
	struct fw_card *card = parent->card;
	struct fw_serial *serial;
	struct fwtty_port *port;
	struct device *tty_dev;
	int i, j;
	int err;

	serial = FUNC22(sizeof(*serial), GFP_KERNEL);
	if (!serial)
		return -ENOMEM;

	FUNC20(&serial->kref);
	serial->card = card;
	FUNC1(&serial->peer_list);

	for (i = 0; i < num_ports; ++i) {
		port = FUNC22(sizeof(*port), GFP_KERNEL);
		if (!port) {
			err = -ENOMEM;
			goto free_ports;
		}
		FUNC30(&port->port);
		port->index = FWTTY_INVALID_INDEX;
		port->port.ops = &fwtty_port_ops;
		port->serial = serial;
		FUNC28(&port->port, 128 * 1024);

		FUNC27(&port->lock);
		FUNC0(&port->drain, fwtty_drain_tx);
		FUNC0(&port->emit_breaks, fwtty_emit_breaks);
		FUNC2(&port->hangup, fwtty_do_hangup);
		FUNC18(&port->wait_tx);
		port->max_payload = FUNC23(SCODE_100);
		FUNC11(&port->tx_fifo);

		FUNC6(port->peer, NULL);
		serial->ports[i] = port;

		/* get unique bus addr region for port's status & recv fifo */
		port->rx_handler.length = FWTTY_PORT_RXFIFO_LEN + 4;
		port->rx_handler.address_callback = fwtty_port_handler;
		port->rx_handler.callback_data = port;
		/*
		 * XXX: use custom memory region above cpu physical memory addrs
		 * this will ease porting to 64-bit firewire adapters
		 */
		err = FUNC12(&port->rx_handler,
						  &fw_high_memory_region);
		if (err) {
			FUNC19(port);
			goto free_ports;
		}
	}
	/* preserve i for error cleanup */

	err = FUNC17(serial);
	if (err) {
		FUNC15(&unit, "no space in port table\n");
		goto free_ports;
	}

	for (j = 0; j < num_ttys; ++j) {
		tty_dev = FUNC31(&serial->ports[j]->port,
						   fwtty_driver,
						   serial->ports[j]->index,
						   card->device);
		if (FUNC3(tty_dev)) {
			err = FUNC5(tty_dev);
			FUNC15(&unit, "register tty device error (%d)\n",
				  err);
			goto unregister_ttys;
		}

		serial->ports[j]->device = tty_dev;
	}
	/* preserve j for error cleanup */

	if (create_loop_dev) {
		struct device *loop_dev;

		loop_dev = FUNC31(&serial->ports[j]->port,
						    fwloop_driver,
						    FUNC26(serial->ports[j]),
						    card->device);
		if (FUNC3(loop_dev)) {
			err = FUNC5(loop_dev);
			FUNC15(&unit, "create loop device failed (%d)\n",
				  err);
			goto unregister_ttys;
		}
		serial->ports[j]->device = loop_dev;
		serial->ports[j]->loopback = true;
	}

	if (!FUNC4(fwserial_debugfs)) {
		serial->debugfs = FUNC7(FUNC10(&unit->device),
						     fwserial_debugfs);
		if (!FUNC4(serial->debugfs)) {
			FUNC8("peers", 0444, serial->debugfs,
					    serial, &fwtty_peers_fops);
			FUNC8("stats", 0444, serial->debugfs,
					    serial, &fwtty_stats_fops);
		}
	}

	FUNC24(&serial->list, &fwserial_list);

	FUNC16(&unit, "TTY over FireWire on device %s (guid %016llx)\n",
		     FUNC10(card->device), (unsigned long long)card->guid);

	err = FUNC14(serial, unit);
	if (!err)
		return 0;

	FUNC15(&unit, "unable to add peer unit device (%d)\n", err);

	/* fall-through to error processing */
	FUNC9(serial->debugfs);

	FUNC25(&serial->list);
	if (create_loop_dev)
		FUNC32(fwloop_driver,
				      FUNC26(serial->ports[j]));
unregister_ttys:
	for (--j; j >= 0; --j)
		FUNC32(fwtty_driver, serial->ports[j]->index);
	FUNC21(&serial->kref, fwserial_destroy);
	return err;

free_ports:
	for (--i; i >= 0; --i) {
		FUNC29(&serial->ports[i]->port);
		FUNC19(serial->ports[i]);
	}
	FUNC19(serial);
	return err;
}