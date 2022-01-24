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
struct bc_state {int /*<<< orphan*/  rx_fcs; int /*<<< orphan*/ * rx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPP_INITFCS ; 
 int /*<<< orphan*/  FUNC0 (struct bc_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct bc_state *bcs)
{
	/* clear skb or allocate new if not skipping */
	if (bcs->rx_skb != NULL)
		FUNC1(bcs->rx_skb, 0);
	else
		FUNC0(bcs);

	/* reset packet state */
	bcs->rx_fcs = PPP_INITFCS;
}