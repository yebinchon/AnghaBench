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
typedef  int u16 ;
struct hv_vmbus_device_id {int dummy; } ;
struct TYPE_5__ {int domain; int /*<<< orphan*/  fwnode; } ;
struct hv_pcibus_device {TYPE_2__ sysdata; int /*<<< orphan*/  wq; int /*<<< orphan*/  cfg_addr; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  state; TYPE_1__* mem_config; int /*<<< orphan*/  remove_event; int /*<<< orphan*/  retarget_msi_interrupt_lock; int /*<<< orphan*/  device_list_lock; int /*<<< orphan*/  config_lock; int /*<<< orphan*/  resources_for_children; int /*<<< orphan*/  dr_list; int /*<<< orphan*/  children; int /*<<< orphan*/  remove_lock; struct hv_device* hdev; } ;
struct TYPE_6__ {int* b; } ;
struct hv_device {int /*<<< orphan*/  channel; TYPE_3__ dev_instance; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HVPCI_DOM_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_CONFIG_MMIO_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct hv_pcibus_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hv_pcibus_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct hv_pcibus_device*) ; 
 int FUNC11 (int) ; 
 int FUNC12 (struct hv_pcibus_device*) ; 
 int FUNC13 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct hv_pcibus_device*) ; 
 int /*<<< orphan*/  hv_pci_onchannelcallback ; 
 int FUNC15 (struct hv_device*) ; 
 int FUNC16 (struct hv_device*) ; 
 int /*<<< orphan*/  hv_pcibus_init ; 
 int /*<<< orphan*/  hv_pcibus_probed ; 
 int FUNC17 (struct hv_pcibus_device*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct hv_device*,struct hv_pcibus_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 char* FUNC27 (int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  pci_ring_size ; 
 int /*<<< orphan*/  FUNC29 (struct hv_pcibus_device*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hv_pcibus_device*) ; 

__attribute__((used)) static int FUNC34(struct hv_device *hdev,
			const struct hv_vmbus_device_id *dev_id)
{
	struct hv_pcibus_device *hbus;
	u16 dom_req, dom;
	char *name;
	int ret;

	/*
	 * hv_pcibus_device contains the hypercall arguments for retargeting in
	 * hv_irq_unmask(). Those must not cross a page boundary.
	 */
	FUNC0(sizeof(*hbus) > PAGE_SIZE);

	hbus = (struct hv_pcibus_device *)FUNC8(GFP_KERNEL);
	if (!hbus)
		return -ENOMEM;
	hbus->state = hv_pcibus_init;

	/*
	 * The PCI bus "domain" is what is called "segment" in ACPI and other
	 * specs. Pull it from the instance ID, to get something usually
	 * unique. In rare cases of collision, we will find out another number
	 * not in use.
	 *
	 * Note that, since this code only runs in a Hyper-V VM, Hyper-V
	 * together with this guest driver can guarantee that (1) The only
	 * domain used by Gen1 VMs for something that looks like a physical
	 * PCI bus (which is actually emulated by the hypervisor) is domain 0.
	 * (2) There will be no overlap between domains (after fixing possible
	 * collisions) in the same VM.
	 */
	dom_req = hdev->dev_instance.b[5] << 8 | hdev->dev_instance.b[4];
	dom = FUNC11(dom_req);

	if (dom == HVPCI_DOM_INVALID) {
		FUNC5(&hdev->device,
			"Unable to use dom# 0x%hx or other numbers", dom_req);
		ret = -EINVAL;
		goto free_bus;
	}

	if (dom != dom_req)
		FUNC6(&hdev->device,
			 "PCI dom# 0x%hx has collision, using 0x%hx",
			 dom_req, dom);

	hbus->sysdata.domain = dom;

	hbus->hdev = hdev;
	FUNC30(&hbus->remove_lock, 1);
	FUNC1(&hbus->children);
	FUNC1(&hbus->dr_list);
	FUNC1(&hbus->resources_for_children);
	FUNC31(&hbus->config_lock);
	FUNC31(&hbus->device_list_lock);
	FUNC31(&hbus->retarget_msi_interrupt_lock);
	FUNC21(&hbus->remove_event);
	hbus->wq = FUNC2("hv_pci_%x", 0,
					   hbus->sysdata.domain);
	if (!hbus->wq) {
		ret = -ENOMEM;
		goto free_dom;
	}

	ret = FUNC33(hdev->channel, pci_ring_size, pci_ring_size, NULL, 0,
			 hv_pci_onchannelcallback, hbus);
	if (ret)
		goto destroy_wq;

	FUNC20(hdev, hbus);

	ret = FUNC15(hdev);
	if (ret)
		goto close;

	ret = FUNC9(hbus);
	if (ret)
		goto close;

	hbus->cfg_addr = FUNC22(hbus->mem_config->start,
				 PCI_CONFIG_MMIO_LENGTH);
	if (!hbus->cfg_addr) {
		FUNC5(&hdev->device,
			"Unable to map a virtual address for config space\n");
		ret = -ENOMEM;
		goto free_config;
	}

	name = FUNC27(GFP_KERNEL, "%pUL", &hdev->dev_instance);
	if (!name) {
		ret = -ENOMEM;
		goto unmap;
	}

	hbus->sysdata.fwnode = FUNC24(name);
	FUNC28(name);
	if (!hbus->sysdata.fwnode) {
		ret = -ENOMEM;
		goto unmap;
	}

	ret = FUNC17(hbus);
	if (ret)
		goto free_fwnode;

	ret = FUNC16(hdev);
	if (ret)
		goto free_irq_domain;

	ret = FUNC13(hdev);
	if (ret)
		goto free_irq_domain;

	ret = FUNC12(hbus);
	if (ret)
		goto free_irq_domain;

	ret = FUNC19(hdev);
	if (ret)
		goto free_windows;

	FUNC29(hbus);

	hbus->state = hv_pcibus_probed;

	ret = FUNC3(hbus);
	if (ret)
		goto free_windows;

	return 0;

free_windows:
	FUNC14(hbus);
free_irq_domain:
	FUNC26(hbus->irq_domain);
free_fwnode:
	FUNC25(hbus->sysdata.fwnode);
unmap:
	FUNC23(hbus->cfg_addr);
free_config:
	FUNC10(hbus);
close:
	FUNC32(hdev->channel);
destroy_wq:
	FUNC4(hbus->wq);
free_dom:
	FUNC18(hbus->sysdata.domain);
free_bus:
	FUNC7((unsigned long)hbus);
	return ret;
}