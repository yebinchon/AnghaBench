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
struct lpc32xx_udc {int /*<<< orphan*/  udp_baseaddr; scalar_t__* udca_v_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CFG_DEV ; 
 int /*<<< orphan*/  CMD_SET_DEV_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct lpc32xx_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct lpc32xx_udc *udc)
{
	u32 i;

	/* Disable device */
	FUNC12(udc, CMD_CFG_DEV, FUNC0(0));
	FUNC12(udc, CMD_SET_DEV_STAT, FUNC0(0));

	/* Disable all device interrupts (including EP0) */
	FUNC8(udc, 0x3FF);

	/* Disable and reset all endpoint interrupts */
	for (i = 0; i < 32; i++) {
		FUNC9(udc, i);
		FUNC7(udc, i);
		FUNC10(udc, i);
		FUNC13(udc, i);
		udc->udca_v_base[i] = 0;

		/* Disable and clear all interrupts and DMA */
		FUNC11(udc, i);
		FUNC14((1 << i), FUNC3(udc->udp_baseaddr));
		FUNC14((1 << i), FUNC4(udc->udp_baseaddr));
		FUNC14((1 << i), FUNC5(udc->udp_baseaddr));
		FUNC14((1 << i), FUNC2(udc->udp_baseaddr));
	}

	/* Disable DMA interrupts */
	FUNC14(0, FUNC1(udc->udp_baseaddr));

	FUNC14(0, FUNC6(udc->udp_baseaddr));
}