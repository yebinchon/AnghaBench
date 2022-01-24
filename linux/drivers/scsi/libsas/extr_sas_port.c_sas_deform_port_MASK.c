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
struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_5__ {TYPE_1__* shost; } ;
struct sas_ha_struct {int /*<<< orphan*/  disco_q; int /*<<< orphan*/  phy_port_lock; TYPE_2__ core; } ;
struct expander_device {int ex_change_count; } ;
struct domain_device {struct expander_device ex_dev; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  pathways; } ;
struct asd_sas_port {int num_phys; unsigned int phy_mask; int /*<<< orphan*/ * port; int /*<<< orphan*/  phy_list_lock; scalar_t__ oob_mode; scalar_t__ tproto; scalar_t__ iproto; scalar_t__ class; int /*<<< orphan*/  attached_sas_addr; int /*<<< orphan*/  sas_addr; int /*<<< orphan*/  phy_list; struct domain_device* port_dev; } ;
struct asd_sas_phy {unsigned int id; struct asd_sas_port* port; int /*<<< orphan*/  port_phy_el; int /*<<< orphan*/  phy; struct sas_ha_struct* ha; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* lldd_port_deformed ) (struct asd_sas_phy*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  transportt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCE_REVALIDATE_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_sas_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct domain_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct asd_sas_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct asd_sas_phy*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct asd_sas_port*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct asd_sas_phy*) ; 
 struct sas_internal* FUNC17 (int /*<<< orphan*/ ) ; 

void FUNC18(struct asd_sas_phy *phy, int gone)
{
	struct sas_ha_struct *sas_ha = phy->ha;
	struct asd_sas_port *port = phy->port;
	struct sas_internal *si =
		FUNC17(sas_ha->core.shost->transportt);
	struct domain_device *dev;
	unsigned long flags;

	if (!port)
		return;		  /* done by a phy event */

	dev = port->port_dev;
	if (dev)
		dev->pathways--;

	if (port->num_phys == 1) {
		FUNC11(port, gone);
		FUNC5(port);
		FUNC9(port->port);
		port->port = NULL;
	} else {
		FUNC10(port->port, phy->phy);
		FUNC6(dev, port->port);
	}

	if (si->dft->lldd_port_deformed)
		si->dft->lldd_port_deformed(phy);

	FUNC13(&sas_ha->phy_port_lock, flags);
	FUNC12(&port->phy_list_lock);

	FUNC3(&phy->port_phy_el);
	FUNC8(phy, NULL);
	phy->port = NULL;
	port->num_phys--;
	port->phy_mask &= ~(1U << phy->id);

	if (port->num_phys == 0) {
		FUNC0(&port->phy_list);
		FUNC4(port->sas_addr, 0, SAS_ADDR_SIZE);
		FUNC4(port->attached_sas_addr, 0, SAS_ADDR_SIZE);
		port->class = 0;
		port->iproto = 0;
		port->tproto = 0;
		port->oob_mode = 0;
		port->phy_mask = 0;
	}
	FUNC14(&port->phy_list_lock);
	FUNC15(&sas_ha->phy_port_lock, flags);

	/* Only insert revalidate event if the port still has members */
	if (port->port && dev && FUNC1(dev->dev_type)) {
		struct expander_device *ex_dev = &dev->ex_dev;

		ex_dev->ex_change_count = -1;
		FUNC7(port, DISCE_REVALIDATE_DOMAIN);
	}
	FUNC2(sas_ha->disco_q);

	return;
}