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
struct imx7_csi {int dummy; } ;

/* Variables and functions */
 int BIT_FRMCNT_RST ; 
 int CSICR1_RESET_VAL ; 
 int CSICR2_RESET_VAL ; 
 int CSICR3_RESET_VAL ; 
 int /*<<< orphan*/  CSI_CSICR1 ; 
 int /*<<< orphan*/  CSI_CSICR2 ; 
 int /*<<< orphan*/  CSI_CSICR3 ; 
 int FUNC0 (struct imx7_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx7_csi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct imx7_csi *csi)
{
	FUNC1(csi,
			   FUNC0(csi, CSI_CSICR3) | BIT_FRMCNT_RST,
			   CSI_CSICR3);

	FUNC1(csi, CSICR1_RESET_VAL, CSI_CSICR1);
	FUNC1(csi, CSICR2_RESET_VAL, CSI_CSICR2);
	FUNC1(csi, CSICR3_RESET_VAL, CSI_CSICR3);
}