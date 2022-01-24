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
typedef  int u64 ;
struct virt_plug_params {int dummy; } ;
struct fwtty_port {int dummy; } ;
struct fwtty_peer {int guid; int generation; unsigned long long mgmt_addr; int /*<<< orphan*/  connect; int /*<<< orphan*/  lock; struct fwtty_port* port; struct fw_unit* unit; int /*<<< orphan*/  list; struct fw_serial* serial; int /*<<< orphan*/  work; int /*<<< orphan*/  timer; int /*<<< orphan*/  node_id; int /*<<< orphan*/  speed; int /*<<< orphan*/  max_payload; } ;
struct device {int dummy; } ;
struct fw_unit {int /*<<< orphan*/  directory; struct device device; } ;
struct fw_serial {struct fwtty_peer* self; int /*<<< orphan*/  peer_list; } ;
struct fw_device {int* config_rom; int generation; scalar_t__ is_local; int /*<<< orphan*/  node_id; int /*<<< orphan*/  max_speed; } ;
struct fw_csr_iterator {int dummy; } ;

/* Variables and functions */
 int CSR_DEPENDENT_INFO ; 
 int CSR_OFFSET ; 
 unsigned long long CSR_REGISTER_BASE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FWPS_NOT_ATTACHED ; 
 int /*<<< orphan*/  FWPS_NO_MGMT_ADDR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fwtty_port*) ; 
 scalar_t__ auto_connect ; 
 scalar_t__ create_loop_dev ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct virt_plug_params*,struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_csr_iterator*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct fw_csr_iterator*,int*,int*) ; 
 struct fw_device* FUNC8 (struct fw_unit*) ; 
 int /*<<< orphan*/  fwserial_auto_connect ; 
 struct fwtty_port* FUNC9 (struct fwtty_peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fwserial_peer_workfn ; 
 int /*<<< orphan*/  fwserial_plug_timeout ; 
 int /*<<< orphan*/  FUNC10 (struct fwtty_peer*,struct virt_plug_params*) ; 
 int /*<<< orphan*/  FUNC11 (struct fw_unit**,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC12 (struct fwtty_port*) ; 
 struct fwtty_peer* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_ttys ; 
 int /*<<< orphan*/  FUNC17 (struct fwtty_peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct fw_serial *serial, struct fw_unit *unit)
{
	struct device *dev = &unit->device;
	struct fw_device  *parent = FUNC8(unit);
	struct fwtty_peer *peer;
	struct fw_csr_iterator ci;
	int key, val;
	int generation;

	peer = FUNC13(sizeof(*peer), GFP_KERNEL);
	if (!peer)
		return -ENOMEM;

	FUNC17(peer, FWPS_NOT_ATTACHED);

	FUNC3(dev, peer);
	peer->unit = unit;
	peer->guid = (u64)parent->config_rom[3] << 32 | parent->config_rom[4];
	peer->speed = parent->max_speed;
	peer->max_payload = FUNC16(FUNC4(parent),
				FUNC14(peer->speed));

	generation = parent->generation;
	FUNC19();
	peer->node_id = parent->node_id;
	FUNC20();
	peer->generation = generation;

	/* retrieve the mgmt bus addr from the unit directory */
	FUNC6(&ci, unit->directory);
	while (FUNC7(&ci, &key, &val)) {
		if (key == (CSR_OFFSET | CSR_DEPENDENT_INFO)) {
			peer->mgmt_addr = CSR_REGISTER_BASE + 4 * val;
			break;
		}
	}
	if (peer->mgmt_addr == 0ULL) {
		/*
		 * No mgmt address effectively disables VIRT_CABLE_PLUG -
		 * this peer will not be able to attach to a remote
		 */
		FUNC17(peer, FWPS_NO_MGMT_ADDR);
	}

	FUNC22(&peer->lock);
	peer->port = NULL;

	FUNC24(&peer->timer, fwserial_plug_timeout, 0);
	FUNC1(&peer->work, fwserial_peer_workfn);
	FUNC0(&peer->connect, fwserial_auto_connect);

	/* associate peer with specific fw_card */
	peer->serial = serial;
	FUNC15(&peer->list, &serial->peer_list);

	FUNC11(&peer->unit, "peer added (guid:%016llx)\n",
		   (unsigned long long)peer->guid);

	/* identify the local unit & virt cable to loopback port */
	if (parent->is_local) {
		serial->self = peer;
		if (create_loop_dev) {
			struct fwtty_port *port;

			port = FUNC9(peer, num_ttys);
			if (!FUNC2(port)) {
				struct virt_plug_params params;

				FUNC21(&peer->lock);
				peer->port = port;
				FUNC5(&params, port);
				FUNC10(peer, &params);
				FUNC23(&peer->lock);

				FUNC12(port);
			}
		}

	} else if (auto_connect) {
		/* auto-attach to remote units only (if policy allows) */
		FUNC18(&peer->connect, 1);
	}

	return 0;
}