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
typedef  int /*<<< orphan*/  u32 ;
struct ssb_chipcommon {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_CHIPCO_REGCTL_ADDR ; 
 int /*<<< orphan*/  SSB_CHIPCO_REGCTL_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ssb_chipcommon *cc,
				   u32 offset, u32 mask, u32 set)
{
	u32 value;

	FUNC0(cc, SSB_CHIPCO_REGCTL_ADDR);
	FUNC1(cc, SSB_CHIPCO_REGCTL_ADDR, offset);
	FUNC0(cc, SSB_CHIPCO_REGCTL_ADDR);
	value = FUNC0(cc, SSB_CHIPCO_REGCTL_DATA);
	value &= mask;
	value |= set;
	FUNC1(cc, SSB_CHIPCO_REGCTL_DATA, value);
	FUNC0(cc, SSB_CHIPCO_REGCTL_DATA);
}