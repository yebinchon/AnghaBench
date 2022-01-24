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
struct imx7_csi {int dummy; } ;

/* Variables and functions */
 int BIT_DMA_REQ_EN_RFF ; 
 int BIT_HRESP_ERR_EN ; 
 int BIT_RXFF_LEVEL ; 
 int /*<<< orphan*/  CSI_CSICR2 ; 
 int /*<<< orphan*/  CSI_CSICR3 ; 
 int FUNC0 (struct imx7_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx7_csi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct imx7_csi *csi)
{
	u32 cr3 = FUNC0(csi, CSI_CSICR3);
	u32 cr2 = FUNC0(csi, CSI_CSICR2);

	/* Burst Type of DMA Transfer from RxFIFO. INCR16 */
	cr2 |= 0xC0000000;

	cr3 |= BIT_DMA_REQ_EN_RFF;
	cr3 |= BIT_HRESP_ERR_EN;
	cr3 &= ~BIT_RXFF_LEVEL;
	cr3 |= 0x2 << 4;

	FUNC1(csi, cr3, CSI_CSICR3);
	FUNC1(csi, cr2, CSI_CSICR2);
}