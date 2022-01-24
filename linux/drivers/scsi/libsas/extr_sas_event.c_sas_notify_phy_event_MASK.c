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
struct sas_ha_struct {int dummy; } ;
struct asd_sas_phy {struct sas_ha_struct* ha; } ;
struct asd_sas_event {int /*<<< orphan*/  work; } ;
typedef  enum phy_event { ____Placeholder_phy_event } phy_event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct asd_sas_event*,int /*<<< orphan*/ ,struct asd_sas_phy*,int) ; 
 int PHY_NUM_EVENTS ; 
 struct asd_sas_event* FUNC2 (struct asd_sas_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_sas_event*) ; 
 int /*<<< orphan*/  sas_phy_event_worker ; 
 int FUNC4 (int,int /*<<< orphan*/ *,struct sas_ha_struct*) ; 

int FUNC5(struct asd_sas_phy *phy, enum phy_event event)
{
	struct asd_sas_event *ev;
	struct sas_ha_struct *ha = phy->ha;
	int ret;

	FUNC0(event >= PHY_NUM_EVENTS);

	ev = FUNC2(phy);
	if (!ev)
		return -ENOMEM;

	FUNC1(ev, sas_phy_event_worker, phy, event);

	ret = FUNC4(event, &ev->work, ha);
	if (ret != 1)
		FUNC3(ev);

	return ret;
}