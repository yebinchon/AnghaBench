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
typedef  int uint32_t ;
struct qla_hw_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M25P_INSTR_WREN ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_ABYTE_CNT ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_INSTR_OPCODE ; 
 scalar_t__ FUNC0 (struct qla_hw_data*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct qla_hw_data *ha)
{
	uint32_t val;

	FUNC1(ha);
	FUNC3(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 0);
	FUNC3(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, M25P_INSTR_WREN);
	FUNC1(ha);
	if (FUNC2(ha))
		return -1;
	if (FUNC0(ha, &val) != 0)
		return -1;
	if ((val & 2) != 2)
		return -1;
	return 0;
}