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
struct npcm_pspi {int tx_bytes; int /*<<< orphan*/ * tx_buf; scalar_t__ base; int /*<<< orphan*/  bits_per_word; } ;

/* Variables and functions */
 scalar_t__ NPCM_PSPI_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct npcm_pspi *priv)
{
	int wsize;

	wsize = FUNC4(FUNC1(priv->bits_per_word), priv->tx_bytes);
	priv->tx_bytes -= wsize;

	if (!priv->tx_buf)
		return;

	switch (wsize) {
	case 1:
		FUNC3(*priv->tx_buf, NPCM_PSPI_DATA + priv->base);
		break;
	case 2:
		FUNC2(*priv->tx_buf, NPCM_PSPI_DATA + priv->base);
		break;
	default:
		FUNC0(1);
		return;
	}

	priv->tx_buf += wsize;
}