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
struct vhci_hcd {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  size_t __u32 ;
struct TYPE_6__ {TYPE_1__* vhci; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {struct vhci_hcd* vhci_hcd_hs; struct vhci_hcd* vhci_hcd_ss; } ;

/* Variables and functions */
 size_t EAGAIN ; 
 size_t EINVAL ; 
 size_t VHCI_HC_PORTS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,size_t) ; 
 TYPE_3__* FUNC1 (struct usb_hcd*) ; 
 scalar_t__ FUNC2 (char const*,int,size_t*) ; 
 struct usb_hcd* FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (size_t) ; 
 size_t FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (size_t*,size_t*) ; 
 int FUNC8 (struct vhci_hcd*,size_t) ; 
 TYPE_2__* vhcis ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	__u32 port = 0, pdev_nr = 0, rhport = 0;
	struct usb_hcd *hcd;
	struct vhci_hcd *vhci_hcd;
	int ret;

	if (FUNC2(buf, 10, &port) < 0)
		return -EINVAL;

	pdev_nr = FUNC4(port);
	rhport = FUNC5(port);

	if (!FUNC7(&pdev_nr, &rhport))
		return -EINVAL;

	hcd = FUNC3(vhcis[pdev_nr].pdev);
	if (hcd == NULL) {
		FUNC0(dev, "port is not ready %u\n", port);
		return -EAGAIN;
	}

	FUNC6("rhport %d\n", rhport);

	if ((port / VHCI_HC_PORTS) % 2)
		vhci_hcd = FUNC1(hcd)->vhci->vhci_hcd_ss;
	else
		vhci_hcd = FUNC1(hcd)->vhci->vhci_hcd_hs;

	ret = FUNC8(vhci_hcd, rhport);
	if (ret < 0)
		return -EINVAL;

	FUNC6("Leave\n");

	return count;
}