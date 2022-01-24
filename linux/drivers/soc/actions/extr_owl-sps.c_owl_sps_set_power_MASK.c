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
struct owl_sps_domain {TYPE_2__* sps; TYPE_1__* info; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct TYPE_3__ {int /*<<< orphan*/  pwr_bit; int /*<<< orphan*/  ack_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct owl_sps_domain *pd, bool enable)
{
	u32 pwr_mask, ack_mask;

	ack_mask = FUNC0(pd->info->ack_bit);
	pwr_mask = FUNC0(pd->info->pwr_bit);

	return FUNC1(pd->sps->base, pwr_mask, ack_mask, enable);
}