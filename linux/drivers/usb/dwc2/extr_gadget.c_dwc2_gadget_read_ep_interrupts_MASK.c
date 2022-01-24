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
typedef  unsigned int u32 ;
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 unsigned int DIEPEMPMSK ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int DIEPMSK ; 
 unsigned int DIEPMSK_TXFIFOEMPTY ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int DOEPMSK ; 
 unsigned int DXEPINT_SETUP_RCVD ; 
 unsigned int FUNC2 (struct dwc2_hsotg*,unsigned int) ; 

__attribute__((used)) static u32 FUNC3(struct dwc2_hsotg *hsotg,
					  unsigned int idx, int dir_in)
{
	u32 epmsk_reg = dir_in ? DIEPMSK : DOEPMSK;
	u32 epint_reg = dir_in ? FUNC0(idx) : FUNC1(idx);
	u32 ints;
	u32 mask;
	u32 diepempmsk;

	mask = FUNC2(hsotg, epmsk_reg);
	diepempmsk = FUNC2(hsotg, DIEPEMPMSK);
	mask |= ((diepempmsk >> idx) & 0x1) ? DIEPMSK_TXFIFOEMPTY : 0;
	mask |= DXEPINT_SETUP_RCVD;

	ints = FUNC2(hsotg, epint_reg);
	ints &= mask;
	return ints;
}