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
typedef  int /*<<< orphan*/  PortAddr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int CC_HALT ; 
 int CSW_HALTED ; 

__attribute__((used)) static bool FUNC2(PortAddr iop_base)
{
	if ((FUNC1(iop_base) & CSW_HALTED) != 0) {
		if ((FUNC0(iop_base) & CC_HALT) != 0) {
			return true;
		}
	}
	return false;
}