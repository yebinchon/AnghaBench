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
struct TYPE_3__ {int phy_identifier; } ;
struct sas_rphy {TYPE_1__ identify; int /*<<< orphan*/  dev; } ;
struct sas_phy_linkrates {int maximum_linkrate; int minimum_linkrate; } ;
struct sas_phy {int minimum_linkrate; } ;
struct expander_device {int /*<<< orphan*/  children; struct ex_phy* ex_phy; } ;
struct ex_phy {int attached_tproto; int /*<<< orphan*/ * port; scalar_t__ attached_sata_dev; int /*<<< orphan*/  attached_sas_addr; int /*<<< orphan*/  attached_iproto; scalar_t__ attached_sata_ps; scalar_t__ attached_sata_host; } ;
struct domain_device {scalar_t__ linkrate; scalar_t__ min_linkrate; int tproto; TYPE_2__* port; int /*<<< orphan*/  dev_list_node; int /*<<< orphan*/  disco_list_node; struct sas_rphy* rphy; int /*<<< orphan*/  siblings; int /*<<< orphan*/  sas_addr; int /*<<< orphan*/  dev_type; struct sas_phy* phy; int /*<<< orphan*/  hashed_sas_addr; int /*<<< orphan*/  iproto; struct domain_device* parent; int /*<<< orphan*/  kref; struct expander_device ex_dev; } ;
typedef  enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;
struct TYPE_4__ {int /*<<< orphan*/  dev_list_lock; int /*<<< orphan*/  disco_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_FUNC_LINK_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 int /*<<< orphan*/  SAS_END_DEVICE ; 
 int SAS_PROTOCOL_SSP ; 
 int SAS_PROTOCOL_STP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,...) ; 
 struct domain_device* FUNC8 () ; 
 int FUNC9 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct domain_device*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct domain_device*) ; 
 int FUNC12 (struct domain_device*) ; 
 struct sas_rphy* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct domain_device*,struct domain_device*,struct ex_phy*) ; 
 int /*<<< orphan*/  FUNC15 (struct domain_device*,struct sas_rphy*) ; 
 int FUNC16 (struct domain_device*,struct ex_phy*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct domain_device*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct sas_rphy*) ; 
 int FUNC25 (struct domain_device*,int,int /*<<< orphan*/ ,struct sas_phy_linkrates*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int) ; 

__attribute__((used)) static struct domain_device *FUNC29(
	struct domain_device *parent, int phy_id)
{
	struct expander_device *parent_ex = &parent->ex_dev;
	struct ex_phy *phy = &parent_ex->ex_phy[phy_id];
	struct domain_device *child = NULL;
	struct sas_rphy *rphy;
	int res;

	if (phy->attached_sata_host || phy->attached_sata_ps)
		return NULL;

	child = FUNC8();
	if (!child)
		return NULL;

	FUNC2(&parent->kref);
	child->parent = parent;
	child->port   = parent->port;
	child->iproto = phy->attached_iproto;
	FUNC5(child->sas_addr, phy->attached_sas_addr, SAS_ADDR_SIZE);
	FUNC17(child->hashed_sas_addr, child->sas_addr);
	if (!phy->port) {
		phy->port = FUNC20(&parent->rphy->dev, phy_id);
		if (FUNC28(!phy->port))
			goto out_err;
		if (FUNC28(FUNC19(phy->port) != 0)) {
			FUNC22(phy->port);
			goto out_err;
		}
	}
	FUNC14(parent, child, phy);
	FUNC10(child, phy->port);

#ifdef CONFIG_SCSI_SAS_ATA
	if ((phy->attached_tproto & SAS_PROTOCOL_STP) || phy->attached_sata_dev) {
		if (child->linkrate > parent->min_linkrate) {
			struct sas_phy *cphy = child->phy;
			enum sas_linkrate min_prate = cphy->minimum_linkrate,
				parent_min_lrate = parent->min_linkrate,
				min_linkrate = (min_prate > parent_min_lrate) ?
					       parent_min_lrate : 0;
			struct sas_phy_linkrates rates = {
				.maximum_linkrate = parent->min_linkrate,
				.minimum_linkrate = min_linkrate,
			};
			int ret;

			pr_notice("ex %016llx phy%02d SATA device linkrate > min pathway connection rate, attempting to lower device linkrate\n",
				   SAS_ADDR(child->sas_addr), phy_id);
			ret = sas_smp_phy_control(parent, phy_id,
						  PHY_FUNC_LINK_RESET, &rates);
			if (ret) {
				pr_err("ex %016llx phy%02d SATA device could not set linkrate (%d)\n",
				       SAS_ADDR(child->sas_addr), phy_id, ret);
				goto out_free;
			}
			pr_notice("ex %016llx phy%02d SATA device set linkrate successfully\n",
				  SAS_ADDR(child->sas_addr), phy_id);
			child->linkrate = child->min_linkrate;
		}
		res = sas_get_ata_info(child, phy);
		if (res)
			goto out_free;

		sas_init_dev(child);
		res = sas_ata_init(child);
		if (res)
			goto out_free;
		rphy = sas_end_device_alloc(phy->port);
		if (!rphy)
			goto out_free;
		rphy->identify.phy_identifier = phy_id;

		child->rphy = rphy;
		get_device(&rphy->dev);

		list_add_tail(&child->disco_list_node, &parent->port->disco_list);

		res = sas_discover_sata(child);
		if (res) {
			pr_notice("sas_discover_sata() for device %16llx at %016llx:%02d returned 0x%x\n",
				  SAS_ADDR(child->sas_addr),
				  SAS_ADDR(parent->sas_addr), phy_id, res);
			goto out_list_del;
		}
	} else
#endif
	  if (phy->attached_tproto & SAS_PROTOCOL_SSP) {
		child->dev_type = SAS_END_DEVICE;
		rphy = FUNC13(phy->port);
		/* FIXME: error handling */
		if (FUNC28(!rphy))
			goto out_free;
		child->tproto = phy->attached_tproto;
		FUNC18(child);

		child->rphy = rphy;
		FUNC1(&rphy->dev);
		rphy->identify.phy_identifier = phy_id;
		FUNC15(child, rphy);

		FUNC3(&child->disco_list_node, &parent->port->disco_list);

		res = FUNC11(child);
		if (res) {
			FUNC7("sas_discover_end_dev() for device %16llx at %016llx:%02d returned 0x%x\n",
				  FUNC0(child->sas_addr),
				  FUNC0(parent->sas_addr), phy_id, res);
			goto out_list_del;
		}
	} else {
		FUNC7("target proto 0x%x at %016llx:0x%x not handled\n",
			  phy->attached_tproto, FUNC0(parent->sas_addr),
			  phy_id);
		goto out_free;
	}

	FUNC3(&child->siblings, &parent_ex->children);
	return child;

 out_list_del:
	FUNC24(child->rphy);
	FUNC4(&child->disco_list_node);
	FUNC26(&parent->port->dev_list_lock);
	FUNC4(&child->dev_list_node);
	FUNC27(&parent->port->dev_list_lock);
 out_free:
	FUNC21(phy->port);
 out_err:
	phy->port = NULL;
	FUNC23(child);
	return NULL;
}