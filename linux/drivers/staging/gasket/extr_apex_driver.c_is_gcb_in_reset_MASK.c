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
struct gasket_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APEX_BAR2_REG_SCU_3 ; 
 int /*<<< orphan*/  APEX_BAR_INDEX ; 
 int SCU3_CUR_RST_GCB_BIT_MASK ; 
 int FUNC0 (struct gasket_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct gasket_dev *gasket_dev)
{
	u32 val = FUNC0(gasket_dev, APEX_BAR_INDEX,
				     APEX_BAR2_REG_SCU_3);

	/* Masks rg_rst_gcb bit of SCU_CTRL_2 */
	return (val & SCU3_CUR_RST_GCB_BIT_MASK);
}