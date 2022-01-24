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
struct geni_se {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_COMMON_GENI_M_IRQ_EN ; 
 scalar_t__ SE_GENI_M_IRQ_EN ; 
 scalar_t__ SE_GENI_RX_RFR_WATERMARK_REG ; 
 scalar_t__ SE_GENI_RX_WATERMARK_REG ; 
 scalar_t__ SE_GENI_S_IRQ_EN ; 
 int /*<<< orphan*/  S_COMMON_GENI_S_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct geni_se*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(struct geni_se *se, u32 rx_wm, u32 rx_rfr)
{
	u32 val;

	FUNC2(se);
	FUNC0(se->base);
	FUNC1(se->base);

	FUNC4(rx_wm, se->base + SE_GENI_RX_WATERMARK_REG);
	FUNC4(rx_rfr, se->base + SE_GENI_RX_RFR_WATERMARK_REG);

	val = FUNC3(se->base + SE_GENI_M_IRQ_EN);
	val |= M_COMMON_GENI_M_IRQ_EN;
	FUNC4(val, se->base + SE_GENI_M_IRQ_EN);

	val = FUNC3(se->base + SE_GENI_S_IRQ_EN);
	val |= S_COMMON_GENI_S_IRQ_EN;
	FUNC4(val, se->base + SE_GENI_S_IRQ_EN);
}