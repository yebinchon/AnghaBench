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
typedef  int u32 ;
struct pxa25x_udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCR ; 
 int UDCCR_MASK_BITS ; 
 int FUNC0 (struct pxa25x_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa25x_udc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct pxa25x_udc *dev, int mask)
{
	u32 udccr = FUNC0(dev, UDCCR);

	FUNC1(dev, (udccr & UDCCR_MASK_BITS) | (mask & UDCCR_MASK_BITS), UDCCR);
}