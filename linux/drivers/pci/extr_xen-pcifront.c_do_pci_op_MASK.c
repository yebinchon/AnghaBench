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
struct xen_pci_op {int err; } ;
struct pcifront_device {unsigned int irq; int /*<<< orphan*/  sh_info_lock; TYPE_2__* xdev; TYPE_1__* sh_info; int /*<<< orphan*/  evtchn; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  evtchn_port_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; struct xen_pci_op op; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ NSEC_PER_SEC ; 
 int XEN_PCI_ERR_dev_not_found ; 
 int /*<<< orphan*/  _XEN_PCIB_active ; 
 int /*<<< orphan*/  _XEN_PCIF_active ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ jiffies ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct xen_pci_op*,struct xen_pci_op*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct pcifront_device *pdev, struct xen_pci_op *op)
{
	int err = 0;
	struct xen_pci_op *active_op = &pdev->sh_info->op;
	unsigned long irq_flags;
	evtchn_port_t port = pdev->evtchn;
	unsigned irq = pdev->irq;
	s64 ns, ns_timeout;

	FUNC7(&pdev->sh_info_lock, irq_flags);

	FUNC3(active_op, op, sizeof(struct xen_pci_op));

	/* Go */
	FUNC10();
	FUNC6(_XEN_PCIF_active, (unsigned long *)&pdev->sh_info->flags);
	FUNC4(port);

	/*
	 * We set a poll timeout of 3 seconds but give up on return after
	 * 2 seconds. It is better to time out too late rather than too early
	 * (in the latter case we end up continually re-executing poll() with a
	 * timeout in the past). 1s difference gives plenty of slack for error.
	 */
	ns_timeout = FUNC2() + 2 * (s64)NSEC_PER_SEC;

	FUNC11(irq);

	while (FUNC9(_XEN_PCIF_active,
			(unsigned long *)&pdev->sh_info->flags)) {
		FUNC12(irq, jiffies + 3*HZ);
		FUNC11(irq);
		ns = FUNC2();
		if (ns > ns_timeout) {
			FUNC1(&pdev->xdev->dev,
				"pciback not responding!!!\n");
			FUNC0(_XEN_PCIF_active,
				  (unsigned long *)&pdev->sh_info->flags);
			err = XEN_PCI_ERR_dev_not_found;
			goto out;
		}
	}

	/*
	* We might lose backend service request since we
	* reuse same evtchn with pci_conf backend response. So re-schedule
	* aer pcifront service.
	*/
	if (FUNC9(_XEN_PCIB_active,
			(unsigned long *)&pdev->sh_info->flags)) {
		FUNC1(&pdev->xdev->dev,
			"schedule aer pcifront service\n");
		FUNC5(pdev);
	}

	FUNC3(op, active_op, sizeof(struct xen_pci_op));

	err = op->err;
out:
	FUNC8(&pdev->sh_info_lock, irq_flags);
	return err;
}