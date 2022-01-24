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
struct iss_resizer_device {int dummy; } ;
struct iss_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_RZA ; 
 int /*<<< orphan*/  DMA_RZB ; 
 int /*<<< orphan*/  DMA_STA ; 
 int DWN_EN ; 
 int EN ; 
 int /*<<< orphan*/  FRACDIV ; 
 int /*<<< orphan*/  GCK_MMR ; 
 int /*<<< orphan*/  GCK_SDR ; 
 int H_DIF ; 
 int H_LPF ; 
 int H_PHS ; 
 int H_TYP ; 
 int /*<<< orphan*/  IN_FIFO_CTRL ; 
 int /*<<< orphan*/  IRQ_RZA ; 
 int /*<<< orphan*/  IRQ_RZB ; 
 int I_HPS ; 
 int I_VPS ; 
 int MODE ; 
 int O_HSZ ; 
 int O_VSZ ; 
 int /*<<< orphan*/  FUNC0 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_device*,int) ; 
 int SDR_C_BAD_H ; 
 int SDR_C_BAD_L ; 
 int SDR_C_OFT ; 
 int SDR_C_PTR_E ; 
 int SDR_C_PTR_S ; 
 int SDR_C_SAD_H ; 
 int SDR_C_SAD_L ; 
 int SDR_Y_BAD_H ; 
 int SDR_Y_BAD_L ; 
 int SDR_Y_OFT ; 
 int SDR_Y_PTR_E ; 
 int SDR_Y_PTR_S ; 
 int SDR_Y_SAD_H ; 
 int SDR_Y_SAD_L ; 
 int /*<<< orphan*/  SEQ ; 
 int /*<<< orphan*/  SRC_EN ; 
 int /*<<< orphan*/  SRC_FMT0 ; 
 int /*<<< orphan*/  SRC_FMT1 ; 
 int /*<<< orphan*/  SRC_HPS ; 
 int /*<<< orphan*/  SRC_HSZ ; 
 int /*<<< orphan*/  SRC_MODE ; 
 int /*<<< orphan*/  SRC_VPS ; 
 int /*<<< orphan*/  SRC_VSZ ; 
 int /*<<< orphan*/  SYSCONFIG ; 
 int V_DIF ; 
 int V_LPF ; 
 int V_PHS_C ; 
 int V_PHS_Y ; 
 int V_TYP ; 
 int /*<<< orphan*/  YUV_C_MAX ; 
 int /*<<< orphan*/  YUV_C_MIN ; 
 int /*<<< orphan*/  YUV_Y_MAX ; 
 int /*<<< orphan*/  YUV_Y_MIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct iss_device* FUNC3 (struct iss_resizer_device*) ; 

__attribute__((used)) static void FUNC4(struct iss_resizer_device *resizer)
{
	struct iss_device *iss = FUNC3(resizer);

	FUNC2(iss->dev, "-------------RESIZER Register dump-------------\n");

	FUNC0(iss, SYSCONFIG);
	FUNC0(iss, IN_FIFO_CTRL);
	FUNC0(iss, FRACDIV);
	FUNC0(iss, SRC_EN);
	FUNC0(iss, SRC_MODE);
	FUNC0(iss, SRC_FMT0);
	FUNC0(iss, SRC_FMT1);
	FUNC0(iss, SRC_VPS);
	FUNC0(iss, SRC_VSZ);
	FUNC0(iss, SRC_HPS);
	FUNC0(iss, SRC_HSZ);
	FUNC0(iss, DMA_RZA);
	FUNC0(iss, DMA_RZB);
	FUNC0(iss, DMA_STA);
	FUNC0(iss, GCK_MMR);
	FUNC0(iss, GCK_SDR);
	FUNC0(iss, IRQ_RZA);
	FUNC0(iss, IRQ_RZB);
	FUNC0(iss, YUV_Y_MIN);
	FUNC0(iss, YUV_Y_MAX);
	FUNC0(iss, YUV_C_MIN);
	FUNC0(iss, YUV_C_MAX);
	FUNC0(iss, SEQ);

	FUNC1(iss, EN);
	FUNC1(iss, MODE);
	FUNC1(iss, 420);
	FUNC1(iss, I_VPS);
	FUNC1(iss, I_HPS);
	FUNC1(iss, O_VSZ);
	FUNC1(iss, O_HSZ);
	FUNC1(iss, V_PHS_Y);
	FUNC1(iss, V_PHS_C);
	FUNC1(iss, V_DIF);
	FUNC1(iss, V_TYP);
	FUNC1(iss, V_LPF);
	FUNC1(iss, H_PHS);
	FUNC1(iss, H_DIF);
	FUNC1(iss, H_TYP);
	FUNC1(iss, H_LPF);
	FUNC1(iss, DWN_EN);
	FUNC1(iss, SDR_Y_BAD_H);
	FUNC1(iss, SDR_Y_BAD_L);
	FUNC1(iss, SDR_Y_SAD_H);
	FUNC1(iss, SDR_Y_SAD_L);
	FUNC1(iss, SDR_Y_OFT);
	FUNC1(iss, SDR_Y_PTR_S);
	FUNC1(iss, SDR_Y_PTR_E);
	FUNC1(iss, SDR_C_BAD_H);
	FUNC1(iss, SDR_C_BAD_L);
	FUNC1(iss, SDR_C_SAD_H);
	FUNC1(iss, SDR_C_SAD_L);
	FUNC1(iss, SDR_C_OFT);
	FUNC1(iss, SDR_C_PTR_S);
	FUNC1(iss, SDR_C_PTR_E);

	FUNC2(iss->dev, "-----------------------------------------------\n");
}