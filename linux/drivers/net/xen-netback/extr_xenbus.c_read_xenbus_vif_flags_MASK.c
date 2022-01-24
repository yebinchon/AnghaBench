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
struct xenvif {int can_sg; int ip_csum; int ipv6_csum; int /*<<< orphan*/  gso_mask; scalar_t__ stall_timeout; int /*<<< orphan*/  drain_timeout; } ;
struct xenbus_device {int /*<<< orphan*/  otherend; } ;
struct backend_info {struct xenvif* vif; struct xenbus_device* dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPV4 ; 
 int /*<<< orphan*/  TCPV6 ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_device*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct backend_info *be)
{
	struct xenvif *vif = be->vif;
	struct xenbus_device *dev = be->dev;
	unsigned int rx_copy;
	int err;

	err = FUNC4(XBT_NIL, dev->otherend, "request-rx-copy", "%u",
			   &rx_copy);
	if (err == -ENOENT) {
		err = 0;
		rx_copy = 0;
	}
	if (err < 0) {
		FUNC2(dev, err, "reading %s/request-rx-copy",
				 dev->otherend);
		return err;
	}
	if (!rx_copy)
		return -EOPNOTSUPP;

	if (!FUNC3(dev->otherend, "feature-rx-notify", 0)) {
		/* - Reduce drain timeout to poll more frequently for
		 *   Rx requests.
		 * - Disable Rx stall detection.
		 */
		be->vif->drain_timeout = FUNC1(30);
		be->vif->stall_timeout = 0;
	}

	vif->can_sg = !!FUNC3(dev->otherend, "feature-sg", 0);

	vif->gso_mask = 0;

	if (FUNC3(dev->otherend, "feature-gso-tcpv4", 0))
		vif->gso_mask |= FUNC0(TCPV4);

	if (FUNC3(dev->otherend, "feature-gso-tcpv6", 0))
		vif->gso_mask |= FUNC0(TCPV6);

	vif->ip_csum = !FUNC3(dev->otherend,
					     "feature-no-csum-offload", 0);

	vif->ipv6_csum = !!FUNC3(dev->otherend,
						"feature-ipv6-csum-offload", 0);

	return 0;
}