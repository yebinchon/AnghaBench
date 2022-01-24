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
struct imx7_csi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_DMA_REFLASH_RFF ; 
 int /*<<< orphan*/  CSI_CSICR18 ; 
 int /*<<< orphan*/  CSI_CSICR3 ; 
 int /*<<< orphan*/  FUNC0 (struct imx7_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx7_csi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct imx7_csi *csi)
{
	u32 cr3 = FUNC0(csi, CSI_CSICR18);

	cr3 = FUNC0(csi, CSI_CSICR3);
	cr3 |= BIT_DMA_REFLASH_RFF;
	FUNC1(csi, cr3, CSI_CSICR3);
}