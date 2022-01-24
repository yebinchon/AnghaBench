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
struct pxa_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCSR ; 
 int UDCCSR0_ACM ; 
 scalar_t__ FUNC0 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_ep*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct pxa_ep *ep, int mask)
{
	if (FUNC0(ep))
		mask |= UDCCSR0_ACM;
	FUNC1(ep, UDCCSR, mask);
}