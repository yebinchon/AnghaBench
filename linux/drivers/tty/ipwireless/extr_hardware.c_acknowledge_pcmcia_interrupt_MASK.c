#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipw_hardware {TYPE_1__* memregs_CCR; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_config_and_status; } ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ipw_hardware *hw)
{
	unsigned short csr = FUNC0(&hw->memregs_CCR->reg_config_and_status);

	csr &= 0xfffd;
	FUNC1(csr, &hw->memregs_CCR->reg_config_and_status);
}