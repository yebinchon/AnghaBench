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
typedef  int /*<<< orphan*/  uint16_t ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SGE_PF_GTS_A ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X_TIMERREG_RESTART_COUNTER ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct csio_hw *hw, uint16_t iqid)
{
	FUNC4(hw, FUNC0(0)		|
			  FUNC1(iqid)	|
			  FUNC3(X_TIMERREG_RESTART_COUNTER),
			  FUNC2(SGE_PF_GTS_A));
}