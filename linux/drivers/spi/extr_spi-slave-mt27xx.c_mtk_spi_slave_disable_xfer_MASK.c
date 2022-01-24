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
struct mtk_spi_slave {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SPIS_CFG_REG ; 
 int /*<<< orphan*/  SPIS_RX_EN ; 
 int /*<<< orphan*/  SPIS_TX_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mtk_spi_slave *mdata)
{
	u32 reg_val;

	reg_val = FUNC0(mdata->base + SPIS_CFG_REG);
	reg_val &= ~SPIS_TX_EN;
	reg_val &= ~SPIS_RX_EN;
	FUNC1(reg_val, mdata->base + SPIS_CFG_REG);
}