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
struct iss_device {int dummy; } ;
typedef  enum ipipeif_input_entity { ____Placeholder_ipipeif_input_entity } ipipeif_input_entity ;

/* Variables and functions */
#define  IPIPEIF_INPUT_CSI2A 129 
#define  IPIPEIF_INPUT_CSI2B 128 
 int /*<<< orphan*/  ISP5_CTRL ; 
 int ISP5_CTRL_PSYNC_CLK_SEL ; 
 int ISP5_CTRL_SYNC_ENABLE ; 
 int ISP5_CTRL_VD_PULSE_EXT ; 
 int /*<<< orphan*/  ISS_CTRL ; 
 int ISS_CTRL_CLK_DIV_MASK ; 
 int ISS_CTRL_INPUT_SEL_CSI2A ; 
 int ISS_CTRL_INPUT_SEL_CSI2B ; 
 int ISS_CTRL_INPUT_SEL_MASK ; 
 int ISS_CTRL_SYNC_DETECT_VS_RAISING ; 
 int /*<<< orphan*/  OMAP4_ISS_MEM_ISP_SYS1 ; 
 int /*<<< orphan*/  OMAP4_ISS_MEM_TOP ; 
 int FUNC0 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct iss_device *iss,
			       enum ipipeif_input_entity input)
{
	u32 issctrl_val;
	u32 isp5ctrl_val;

	issctrl_val = FUNC0(iss, OMAP4_ISS_MEM_TOP, ISS_CTRL);
	issctrl_val &= ~ISS_CTRL_INPUT_SEL_MASK;
	issctrl_val &= ~ISS_CTRL_CLK_DIV_MASK;

	isp5ctrl_val = FUNC0(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL);

	switch (input) {
	case IPIPEIF_INPUT_CSI2A:
		issctrl_val |= ISS_CTRL_INPUT_SEL_CSI2A;
		break;

	case IPIPEIF_INPUT_CSI2B:
		issctrl_val |= ISS_CTRL_INPUT_SEL_CSI2B;
		break;

	default:
		return;
	}

	issctrl_val |= ISS_CTRL_SYNC_DETECT_VS_RAISING;

	isp5ctrl_val |= ISP5_CTRL_VD_PULSE_EXT | ISP5_CTRL_PSYNC_CLK_SEL |
			ISP5_CTRL_SYNC_ENABLE;

	FUNC1(iss, OMAP4_ISS_MEM_TOP, ISS_CTRL, issctrl_val);
	FUNC1(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, isp5ctrl_val);
}