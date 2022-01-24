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
struct sas_ha_struct {scalar_t__ event_thres; TYPE_2__ core; } ;
struct asd_sas_phy {int /*<<< orphan*/  event_nr; int /*<<< orphan*/  id; int /*<<< orphan*/  in_shutdown; struct sas_ha_struct* ha; } ;
struct asd_sas_event {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {scalar_t__ lldd_control_phy; } ;
struct TYPE_4__ {int /*<<< orphan*/  transportt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PHYE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct asd_sas_event*) ; 
 struct asd_sas_event* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sas_event_cache ; 
 int /*<<< orphan*/  FUNC9 (struct asd_sas_phy*,int /*<<< orphan*/ ) ; 
 struct sas_internal* FUNC10 (int /*<<< orphan*/ ) ; 

struct asd_sas_event *FUNC11(struct asd_sas_phy *phy)
{
	struct asd_sas_event *event;
	gfp_t flags = FUNC5() ? GFP_ATOMIC : GFP_KERNEL;
	struct sas_ha_struct *sas_ha = phy->ha;
	struct sas_internal *i =
		FUNC10(sas_ha->core.shost->transportt);

	event = FUNC7(sas_event_cache, flags);
	if (!event)
		return NULL;

	FUNC2(&phy->event_nr);

	if (FUNC3(&phy->event_nr) > phy->ha->event_thres) {
		if (i->dft->lldd_control_phy) {
			if (FUNC4(&phy->in_shutdown, 0, 1) == 0) {
				FUNC8("The phy%d bursting events, shut it down.\n",
					  phy->id);
				FUNC9(phy, PHYE_SHUTDOWN);
			}
		} else {
			/* Do not support PHY control, stop allocating events */
			FUNC0(1, "PHY control not supported.\n");
			FUNC6(sas_event_cache, event);
			FUNC1(&phy->event_nr);
			event = NULL;
		}
	}

	return event;
}