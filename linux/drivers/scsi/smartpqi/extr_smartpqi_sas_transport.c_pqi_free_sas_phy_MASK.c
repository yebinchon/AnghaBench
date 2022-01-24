#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sas_phy {int dummy; } ;
struct pqi_sas_phy {int /*<<< orphan*/  phy_list_entry; scalar_t__ added_to_port; TYPE_1__* parent_port; struct sas_phy* phy; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pqi_sas_phy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sas_phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sas_phy*) ; 

__attribute__((used)) static void FUNC4(struct pqi_sas_phy *pqi_sas_phy)
{
	struct sas_phy *phy = pqi_sas_phy->phy;

	FUNC3(pqi_sas_phy->parent_port->port, phy);
	FUNC2(phy);
	if (pqi_sas_phy->added_to_port)
		FUNC1(&pqi_sas_phy->phy_list_entry);
	FUNC0(pqi_sas_phy);
}