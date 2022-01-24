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
struct net_device {int /*<<< orphan*/  dev; } ;
struct fcoe_interface {int dummy; } ;
struct fcoe_ctlr_device {int dummy; } ;
struct fcoe_ctlr {int /*<<< orphan*/  get_src_addr; int /*<<< orphan*/  update_mac; int /*<<< orphan*/  send; struct fcoe_ctlr_device* cdev; } ;
typedef  enum fip_mode { ____Placeholder_fip_mode } fip_mode ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 struct fcoe_interface* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct fcoe_ctlr*) ; 
 struct fcoe_ctlr_device* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fcoe_ctlr_device*) ; 
 struct fcoe_ctlr* FUNC8 (struct fcoe_ctlr_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct fcoe_ctlr*,int) ; 
 struct fcoe_interface* FUNC10 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  fcoe_fip_send ; 
 int /*<<< orphan*/  fcoe_get_src_mac ; 
 int FUNC11 (struct fcoe_interface*,struct net_device*) ; 
 int /*<<< orphan*/  fcoe_sysfs_templ ; 
 int /*<<< orphan*/  fcoe_update_src_mac ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fcoe_interface *FUNC14(struct net_device *netdev,
						    enum fip_mode fip_mode)
{
	struct fcoe_ctlr_device *ctlr_dev;
	struct fcoe_ctlr *ctlr;
	struct fcoe_interface *fcoe;
	int size;
	int err;

	if (!FUNC13(THIS_MODULE)) {
		FUNC2(netdev,
				"Could not get a reference to the module\n");
		fcoe = FUNC0(-EBUSY);
		goto out;
	}

	size = sizeof(struct fcoe_ctlr) + sizeof(struct fcoe_interface);
	ctlr_dev = FUNC6(&netdev->dev, &fcoe_sysfs_templ,
					size);
	if (!ctlr_dev) {
		FUNC1("Failed to add fcoe_ctlr_device\n");
		fcoe = FUNC0(-ENOMEM);
		goto out_putmod;
	}

	ctlr = FUNC8(ctlr_dev);
	ctlr->cdev = ctlr_dev;
	fcoe = FUNC10(ctlr);

	FUNC3(netdev);

	/*
	 * Initialize FIP.
	 */
	FUNC9(ctlr, fip_mode);
	ctlr->send = fcoe_fip_send;
	ctlr->update_mac = fcoe_update_src_mac;
	ctlr->get_src_addr = fcoe_get_src_mac;

	err = FUNC11(fcoe, netdev);
	if (err) {
		FUNC5(ctlr);
		FUNC7(ctlr_dev);
		FUNC4(netdev);
		fcoe = FUNC0(err);
		goto out_putmod;
	}

	goto out;

out_putmod:
	FUNC12(THIS_MODULE);
out:
	return fcoe;
}