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
struct fusb300 {scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUSB300_EPSET1_FIFOENTRY_MSK ; 
 int /*<<< orphan*/  FUSB300_FIFO_ENTRY_NUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct fusb300 *fusb300,
				   u32 ep)
{
	u32 val = FUNC2(fusb300->reg + FUNC1(ep));

	val &= ~FUSB300_EPSET1_FIFOENTRY_MSK;
	val |= FUNC0(FUSB300_FIFO_ENTRY_NUM);
	FUNC3(val, fusb300->reg + FUNC1(ep));
}