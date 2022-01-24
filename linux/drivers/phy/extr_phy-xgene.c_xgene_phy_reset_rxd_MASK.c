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
struct xgene_phy_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXTX_REG7 ; 
 int /*<<< orphan*/  RXTX_REG7_RESETB_RXD_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct xgene_phy_ctx *ctx, int lane)
{
	/* Reset digital Rx */
	FUNC0(ctx, lane, RXTX_REG7, RXTX_REG7_RESETB_RXD_MASK);
	/* As per PHY design spec, the reset requires a minimum of 100us. */
	FUNC2(100, 150);
	FUNC1(ctx, lane, RXTX_REG7, RXTX_REG7_RESETB_RXD_MASK);
}