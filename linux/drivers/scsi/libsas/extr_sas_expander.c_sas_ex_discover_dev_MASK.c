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
struct expander_device {struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ linkrate; scalar_t__ routing_attr; int attached_dev_type; int /*<<< orphan*/  attached_sas_addr; int /*<<< orphan*/  attached_phy_id; } ;
struct domain_device {int /*<<< orphan*/  sas_addr; TYPE_3__* port; TYPE_1__* parent; struct expander_device ex_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  fanout_sas_addr; } ;
struct TYPE_6__ {TYPE_2__ disc; int /*<<< orphan*/  sas_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  sas_addr; } ;

/* Variables and functions */
 scalar_t__ DIRECT_ROUTING ; 
 int /*<<< orphan*/  PHY_FUNC_LINK_RESET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
#define  SAS_EDGE_EXPANDER_DEVICE 131 
#define  SAS_END_DEVICE 130 
#define  SAS_FANOUT_EXPANDER_DEVICE 129 
 scalar_t__ SAS_LINK_RATE_UNKNOWN ; 
 int SAS_PHY_UNUSED ; 
#define  SAS_SATA_PENDING 128 
 scalar_t__ SAS_SATA_SPINUP_HOLD ; 
 scalar_t__ TABLE_ROUTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct domain_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct domain_device*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct domain_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct domain_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct domain_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct domain_device*,int /*<<< orphan*/ ) ; 
 struct domain_device* FUNC13 (struct domain_device*,int) ; 
 struct domain_device* FUNC14 (struct domain_device*,int) ; 
 scalar_t__ FUNC15 (struct domain_device*,int) ; 
 int FUNC16 (struct domain_device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct domain_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct domain_device *dev, int phy_id)
{
	struct expander_device *ex = &dev->ex_dev;
	struct ex_phy *ex_phy = &ex->ex_phy[phy_id];
	struct domain_device *child = NULL;
	int res = 0;

	/* Phy state */
	if (ex_phy->linkrate == SAS_SATA_SPINUP_HOLD) {
		if (!FUNC17(dev, phy_id, PHY_FUNC_LINK_RESET, NULL))
			res = FUNC16(dev, phy_id);
		if (res)
			return res;
	}

	/* Parent and domain coherency */
	if (!dev->parent && (FUNC0(ex_phy->attached_sas_addr) ==
			     FUNC0(dev->port->sas_addr))) {
		FUNC6(dev, phy_id);
		return 0;
	}
	if (dev->parent && (FUNC0(ex_phy->attached_sas_addr) ==
			    FUNC0(dev->parent->sas_addr))) {
		FUNC6(dev, phy_id);
		if (ex_phy->routing_attr == TABLE_ROUTING)
			FUNC7(dev, phy_id, dev->port->sas_addr, 1);
		return 0;
	}

	if (FUNC9(dev->port, ex_phy->attached_sas_addr))
		FUNC12(dev, ex_phy->attached_sas_addr);

	if (ex_phy->attached_dev_type == SAS_PHY_UNUSED) {
		if (ex_phy->routing_attr == DIRECT_ROUTING) {
			FUNC2(ex_phy->attached_sas_addr, 0, SAS_ADDR_SIZE);
			FUNC8(dev, ex_phy->attached_sas_addr);
		}
		return 0;
	} else if (ex_phy->linkrate == SAS_LINK_RATE_UNKNOWN)
		return 0;

	if (ex_phy->attached_dev_type != SAS_END_DEVICE &&
	    ex_phy->attached_dev_type != SAS_FANOUT_EXPANDER_DEVICE &&
	    ex_phy->attached_dev_type != SAS_EDGE_EXPANDER_DEVICE &&
	    ex_phy->attached_dev_type != SAS_SATA_PENDING) {
		FUNC5("unknown device type(0x%x) attached to ex %016llx phy%02d\n",
			ex_phy->attached_dev_type,
			FUNC0(dev->sas_addr),
			phy_id);
		return 0;
	}

	res = FUNC8(dev, ex_phy->attached_sas_addr);
	if (res) {
		FUNC4("configure routing for dev %016llx reported 0x%x. Forgotten\n",
			  FUNC0(ex_phy->attached_sas_addr), res);
		FUNC10(dev, ex_phy->attached_sas_addr);
		return res;
	}

	if (FUNC15(dev, phy_id)) {
		FUNC3("Attaching ex phy%02d to wide port %016llx\n",
			 phy_id, FUNC0(ex_phy->attached_sas_addr));
		return res;
	}

	switch (ex_phy->attached_dev_type) {
	case SAS_END_DEVICE:
	case SAS_SATA_PENDING:
		child = FUNC13(dev, phy_id);
		break;
	case SAS_FANOUT_EXPANDER_DEVICE:
		if (FUNC0(dev->port->disc.fanout_sas_addr)) {
			FUNC3("second fanout expander %016llx phy%02d attached to ex %016llx phy%02d\n",
				 FUNC0(ex_phy->attached_sas_addr),
				 ex_phy->attached_phy_id,
				 FUNC0(dev->sas_addr),
				 phy_id);
			FUNC11(dev, phy_id);
			return res;
		} else
			FUNC1(dev->port->disc.fanout_sas_addr,
			       ex_phy->attached_sas_addr, SAS_ADDR_SIZE);
		/* fallthrough */
	case SAS_EDGE_EXPANDER_DEVICE:
		child = FUNC14(dev, phy_id);
		break;
	default:
		break;
	}

	if (!child)
		FUNC4("ex %016llx phy%02d failed to discover\n",
			  FUNC0(dev->sas_addr), phy_id);
	return res;
}