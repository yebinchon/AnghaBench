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
struct uniphier_spi_priv {scalar_t__ base; int /*<<< orphan*/  clk; } ;
struct spi_device {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ SSI_CKS ; 
 int SSI_CKS_CKRAT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int,int) ; 
 struct uniphier_spi_priv* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct spi_device *spi,
				      unsigned int speed)
{
	struct uniphier_spi_priv *priv = FUNC4(spi->master);
	u32 val, ckdiv;

	/*
	 * the supported rates are even numbers from 4 to 254. (4,6,8...254)
	 * round up as we look for equal or less speed
	 */
	ckdiv = FUNC0(FUNC1(priv->clk), speed);
	ckdiv = FUNC3(ckdiv, 2);

	val = FUNC2(priv->base + SSI_CKS);
	val &= ~SSI_CKS_CKRAT_MASK;
	val |= ckdiv & SSI_CKS_CKRAT_MASK;
	FUNC5(val, priv->base + SSI_CKS);
}