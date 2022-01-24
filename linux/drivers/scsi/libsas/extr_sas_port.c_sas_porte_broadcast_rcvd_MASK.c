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
typedef  int /*<<< orphan*/  u32 ;
struct work_struct {int dummy; } ;
struct asd_sas_phy {TYPE_2__* port; int /*<<< orphan*/  sas_prim_lock; int /*<<< orphan*/  sas_prim; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;
struct TYPE_4__ {TYPE_1__* ha; } ;
struct TYPE_3__ {int /*<<< orphan*/  disco_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCE_REVALIDATE_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct asd_sas_event* FUNC5 (struct work_struct*) ; 

void FUNC6(struct work_struct *work)
{
	struct asd_sas_event *ev = FUNC5(work);
	struct asd_sas_phy *phy = ev->phy;
	unsigned long flags;
	u32 prim;

	FUNC3(&phy->sas_prim_lock, flags);
	prim = phy->sas_prim;
	FUNC4(&phy->sas_prim_lock, flags);

	FUNC1("broadcast received: %d\n", prim);
	FUNC2(phy->port, DISCE_REVALIDATE_DOMAIN);

	if (phy->port)
		FUNC0(phy->port->ha->disco_q);
}