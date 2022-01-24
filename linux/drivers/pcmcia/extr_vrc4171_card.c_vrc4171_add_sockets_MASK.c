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
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct vrc4171_socket {int slot; TYPE_3__ pcmcia_socket; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CARD_MAX_SLOTS ; 
 int CARD_SLOTB ; 
 int /*<<< orphan*/  GLOBAL_CONTROL ; 
 int /*<<< orphan*/  I365_ADDRWIN ; 
 scalar_t__ SLOTB_IS_NONE ; 
 int SLOT_INITIALIZED ; 
#define  SLOT_NOPROBE_IO 129 
#define  SLOT_NOPROBE_MEM 128 
 int SLOT_PROBE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char) ; 
 TYPE_2__ vrc4171_card_device ; 
 int /*<<< orphan*/  vrc4171_pccard_operations ; 
 scalar_t__ vrc4171_slotb ; 
 struct vrc4171_socket* vrc4171_sockets ; 

__attribute__((used)) static int FUNC5(void)
{
	struct vrc4171_socket *socket;
	int slot, retval;

	for (slot = 0; slot < CARD_MAX_SLOTS; slot++) {
		if (slot == CARD_SLOTB && vrc4171_slotb == SLOTB_IS_NONE)
			continue;

		socket = &vrc4171_sockets[slot];
		if (socket->slot != SLOT_PROBE) {
			uint8_t addrwin;

			switch (socket->slot) {
			case SLOT_NOPROBE_MEM:
				addrwin = FUNC0(slot, I365_ADDRWIN);
				addrwin &= 0x1f;
				FUNC1(slot, I365_ADDRWIN, addrwin);
				break;
			case SLOT_NOPROBE_IO:
				addrwin = FUNC0(slot, I365_ADDRWIN);
				addrwin &= 0xc0;
				FUNC1(slot, I365_ADDRWIN, addrwin);
				break;
			default:
				break;
			}

			FUNC3(slot);
			continue;
		}

		FUNC4(socket->name, "NEC VRC4171 Card Slot %1c", 'A' + slot);
		socket->pcmcia_socket.dev.parent = &vrc4171_card_device.dev;
		socket->pcmcia_socket.ops = &vrc4171_pccard_operations;
		socket->pcmcia_socket.owner = THIS_MODULE;

		retval = FUNC2(&socket->pcmcia_socket);
		if (retval < 0)
			return retval;

		FUNC1(slot, I365_ADDRWIN, 0);
		FUNC1(slot, GLOBAL_CONTROL, 0);

		socket->slot = SLOT_INITIALIZED;
	}

	return 0;
}