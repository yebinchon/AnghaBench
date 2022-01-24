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
struct esas2r_sas_nvram {int* sas_addr; } ;
struct esas2r_adapter {TYPE_2__* pcid; int /*<<< orphan*/  flags; struct esas2r_sas_nvram* nvram; } ;
struct TYPE_4__ {int devfn; TYPE_1__* bus; } ;
struct TYPE_3__ {int number; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NVR_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct esas2r_sas_nvram default_sas_nvram ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct esas2r_adapter *a)
{
	struct esas2r_sas_nvram *n = a->nvram;
	u32 time = FUNC4(jiffies);

	FUNC3(AF_NVR_VALID, &a->flags);
	*n = default_sas_nvram;
	n->sas_addr[3] |= 0x0F;
	n->sas_addr[4] = FUNC0(FUNC2(time));
	n->sas_addr[5] = FUNC1(FUNC2(time));
	n->sas_addr[6] = a->pcid->bus->number;
	n->sas_addr[7] = a->pcid->devfn;
}