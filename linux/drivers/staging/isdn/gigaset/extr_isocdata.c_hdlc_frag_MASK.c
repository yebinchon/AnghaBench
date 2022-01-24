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
struct TYPE_6__ {TYPE_2__* bas; } ;
struct bc_state {int /*<<< orphan*/  rx_fcs; int /*<<< orphan*/  rx_skb; TYPE_3__ hw; TYPE_1__* cs; int /*<<< orphan*/  ignore; } ;
struct TYPE_5__ {int /*<<< orphan*/  alignerrs; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPP_INITFCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct bc_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct bc_state*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct bc_state *bcs, unsigned inbits)
{
	if (FUNC4(bcs->ignore)) {
		bcs->ignore--;
		FUNC3(bcs);
		return;
	}

	FUNC1(bcs->cs->dev, "received partial byte (%d bits)\n", inbits);
	bcs->hw.bas->alignerrs++;
	FUNC2(bcs);
	FUNC0(bcs->rx_skb, 0);
	bcs->rx_fcs = PPP_INITFCS;
}