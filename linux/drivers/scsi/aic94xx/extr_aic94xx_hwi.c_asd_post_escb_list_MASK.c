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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  pend_q_lock; scalar_t__ scbpro; } ;
struct asd_ha_struct {TYPE_1__ seq; } ;
struct asd_ascb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCBPRO ; 
 int /*<<< orphan*/  FUNC0 (struct asd_ha_struct*,struct asd_ascb*) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct asd_ha_struct *asd_ha, struct asd_ascb *ascb,
		       int num)
{
	unsigned long flags;

	FUNC2(&asd_ha->seq.pend_q_lock, flags);
	FUNC0(asd_ha, ascb);
	asd_ha->seq.scbpro += num;
	FUNC1(asd_ha, SCBPRO, (u32)asd_ha->seq.scbpro);
	FUNC3(&asd_ha->seq.pend_q_lock, flags);

	return 0;
}