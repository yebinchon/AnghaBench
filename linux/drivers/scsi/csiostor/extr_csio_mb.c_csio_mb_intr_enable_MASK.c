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
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_PF_HOST_INT_ENABLE_A ; 
 int /*<<< orphan*/  MBMSGRDYINTEN_F ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct csio_hw *hw)
{
	FUNC2(hw, MBMSGRDYINTEN_F, FUNC0(CIM_PF_HOST_INT_ENABLE_A));
	FUNC1(hw, FUNC0(CIM_PF_HOST_INT_ENABLE_A));
}