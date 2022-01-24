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
typedef  int /*<<< orphan*/  u8 ;
struct pci_packet {TYPE_2__* message; struct hv_pci_compl* compl_ctxt; int /*<<< orphan*/  completion_func; } ;
struct pci_message {int dummy; } ;
struct pci_bus_relations {TYPE_2__* message; struct hv_pci_compl* compl_ctxt; int /*<<< orphan*/  completion_func; } ;
struct hv_pcibus_device {int dummy; } ;
struct hv_pci_compl {int /*<<< orphan*/  host_event; } ;
struct hv_device {TYPE_1__* channel; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  relations ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {scalar_t__ rescind; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  PCI_BUS_D0EXIT ; 
 int /*<<< orphan*/  VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct hv_pcibus_device* FUNC1 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_pcibus_device*,struct pci_packet*) ; 
 int /*<<< orphan*/  hv_pci_generic_compl ; 
 int FUNC3 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_packet*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_1__*,TYPE_2__**,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(struct hv_device *hdev)
{
	struct hv_pcibus_device *hbus = FUNC1(hdev);
	struct {
		struct pci_packet teardown_packet;
		u8 buffer[sizeof(struct pci_message)];
	} pkt;
	struct pci_bus_relations relations;
	struct hv_pci_compl comp_pkt;
	int ret;

	/*
	 * After the host sends the RESCIND_CHANNEL message, it doesn't
	 * access the per-channel ringbuffer any longer.
	 */
	if (hdev->channel->rescind)
		return;

	/* Delete any children which might still exist. */
	FUNC5(&relations, 0, sizeof(relations));
	FUNC2(hbus, &relations);

	ret = FUNC3(hdev);
	if (ret)
		FUNC0(&hdev->device,
			"Couldn't send resources released packet(s)\n");

	FUNC5(&pkt.teardown_packet, 0, sizeof(pkt.teardown_packet));
	FUNC4(&comp_pkt.host_event);
	pkt.teardown_packet.completion_func = hv_pci_generic_compl;
	pkt.teardown_packet.compl_ctxt = &comp_pkt;
	pkt.teardown_packet.message[0].type = PCI_BUS_D0EXIT;

	ret = FUNC6(hdev->channel, &pkt.teardown_packet.message,
			       sizeof(struct pci_message),
			       (unsigned long)&pkt.teardown_packet,
			       VM_PKT_DATA_INBAND,
			       VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
	if (!ret)
		FUNC7(&comp_pkt.host_event, 10 * HZ);
}