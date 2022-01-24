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
typedef  int /*<<< orphan*/  ushort ;
typedef  int uchar ;
typedef  int /*<<< orphan*/  PortAddr ;

/* Variables and functions */
 int ASC_EEP_CMD_READ ; 
 int ASC_EEP_CMD_WRITE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ushort FUNC3(PortAddr iop_base, uchar addr)
{
	ushort read_wval;
	uchar cmd_reg;

	FUNC2(iop_base, ASC_EEP_CMD_WRITE_DISABLE);
	FUNC1();
	cmd_reg = addr | ASC_EEP_CMD_READ;
	FUNC2(iop_base, cmd_reg);
	FUNC1();
	read_wval = FUNC0(iop_base);
	FUNC1();
	return read_wval;
}