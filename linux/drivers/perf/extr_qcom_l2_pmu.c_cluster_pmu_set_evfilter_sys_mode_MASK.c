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

/* Variables and functions */
 int /*<<< orphan*/  IA_L2PMXEVFILTER ; 
 int L2PMXEVFILTER_ORGFILTER_ALL ; 
 int L2PMXEVFILTER_ORGFILTER_IDINDEP ; 
 int L2PMXEVFILTER_SUFILTER_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(u32 ctr)
{
	u32 val =  L2PMXEVFILTER_SUFILTER_ALL |
		   L2PMXEVFILTER_ORGFILTER_IDINDEP |
		   L2PMXEVFILTER_ORGFILTER_ALL;

	FUNC1(FUNC0(IA_L2PMXEVFILTER, ctr), val);
}