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
struct fusb300_ep_info {int /*<<< orphan*/  epnum; int /*<<< orphan*/  dir_in; } ;
struct fusb300 {scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSB300_EPSET1_DIRIN ; 
 int /*<<< orphan*/  FUSB300_EPSET1_DIR_MSK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct fusb300 *fusb300,
			      struct fusb300_ep_info info)
{
	u32 reg;

	if (!info.dir_in)
		return;
	reg = FUNC1(fusb300->reg + FUNC0(info.epnum));
	reg &= ~FUSB300_EPSET1_DIR_MSK;
	reg |= FUSB300_EPSET1_DIRIN;
	FUNC2(reg, fusb300->reg + FUNC0(info.epnum));
}