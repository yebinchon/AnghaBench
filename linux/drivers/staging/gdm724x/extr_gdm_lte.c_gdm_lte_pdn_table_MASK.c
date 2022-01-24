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
struct pdn_table {int dummy; } ;
struct TYPE_4__ {void* nic_type; void* dft_eps_id; scalar_t__ activate; } ;
struct nic {TYPE_2__ pdn_table; TYPE_1__* phy_dev; } ;
struct net_device {int dummy; } ;
struct hci_pdn_table_ind {int /*<<< orphan*/  nic_type; int /*<<< orphan*/  dft_eps_id; scalar_t__ activate; } ;
struct TYPE_3__ {int /*<<< orphan*/  priv_dev; int /*<<< orphan*/  (* get_endian ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 struct nic* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, char *buf, int len)
{
	struct nic *nic = FUNC3(dev);
	struct hci_pdn_table_ind *pdn_table = (struct hci_pdn_table_ind *)buf;
	u8 ed = nic->phy_dev->get_endian(nic->phy_dev->priv_dev);

	if (!pdn_table->activate) {
		FUNC1(&nic->pdn_table, 0x00, sizeof(struct pdn_table));
		FUNC2(dev, "pdn deactivated\n");

		return;
	}

	nic->pdn_table.activate = pdn_table->activate;
	nic->pdn_table.dft_eps_id = FUNC0(ed, pdn_table->dft_eps_id);
	nic->pdn_table.nic_type = FUNC0(ed, pdn_table->nic_type);

	FUNC2(dev, "pdn activated, nic_type=0x%x\n",
		    nic->pdn_table.nic_type);
}