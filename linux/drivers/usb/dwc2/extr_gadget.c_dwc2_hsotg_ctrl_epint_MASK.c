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
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAINTMSK ; 
 int FUNC0 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct dwc2_hsotg *hsotg,
				  unsigned int ep, unsigned int dir_in,
				 unsigned int en)
{
	unsigned long flags;
	u32 bit = 1 << ep;
	u32 daint;

	if (!dir_in)
		bit <<= 16;

	FUNC3(flags);
	daint = FUNC0(hsotg, DAINTMSK);
	if (en)
		daint |= bit;
	else
		daint &= ~bit;
	FUNC1(hsotg, daint, DAINTMSK);
	FUNC2(flags);
}