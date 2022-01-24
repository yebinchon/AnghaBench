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
struct uniphier_spi_priv {unsigned int rx_bytes; unsigned int tx_bytes; scalar_t__ base; int /*<<< orphan*/  bits_per_word; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,unsigned int) ; 
 scalar_t__ SSI_FC ; 
 int SSI_FC_RXFTH_MASK ; 
 int SSI_FC_TXFTH_MASK ; 
 int /*<<< orphan*/  SSI_FIFO_DEPTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct uniphier_spi_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct uniphier_spi_priv *priv)
{
	unsigned int fifo_threshold, fill_bytes;
	u32 val;

	fifo_threshold = FUNC0(priv->rx_bytes,
				FUNC2(priv->bits_per_word));
	fifo_threshold = FUNC3(fifo_threshold, SSI_FIFO_DEPTH);

	fill_bytes = fifo_threshold - (priv->rx_bytes - priv->tx_bytes);

	/* set fifo threshold */
	val = FUNC4(priv->base + SSI_FC);
	val &= ~(SSI_FC_TXFTH_MASK | SSI_FC_RXFTH_MASK);
	val |= FUNC1(SSI_FC_TXFTH_MASK, fifo_threshold);
	val |= FUNC1(SSI_FC_RXFTH_MASK, fifo_threshold);
	FUNC6(val, priv->base + SSI_FC);

	while (fill_bytes--)
		FUNC5(priv);
}