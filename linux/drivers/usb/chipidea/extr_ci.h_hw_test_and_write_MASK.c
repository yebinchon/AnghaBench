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
struct ci_hdrc {int dummy; } ;
typedef  enum ci_hw_regs { ____Placeholder_ci_hw_regs } ci_hw_regs ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct ci_hdrc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*,int,int,int) ; 

__attribute__((used)) static inline u32 FUNC3(struct ci_hdrc *ci, enum ci_hw_regs reg,
				    u32 mask, u32 data)
{
	u32 val = FUNC1(ci, reg, ~0);

	FUNC2(ci, reg, mask, data);
	return (val & mask) >> FUNC0(mask);
}