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
typedef  int /*<<< orphan*/  u16 ;
struct npcm_pspi {int rx_bytes; int /*<<< orphan*/ * rx_buf; scalar_t__ base; int /*<<< orphan*/  bits_per_word; } ;

/* Variables and functions */
 scalar_t__ NPCM_PSPI_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct npcm_pspi *priv)
{
	int rsize;
	u16 val;

	rsize = FUNC4(FUNC1(priv->bits_per_word), priv->rx_bytes);
	priv->rx_bytes -= rsize;

	if (!priv->rx_buf)
		return;

	switch (rsize) {
	case 1:
		val = FUNC3(priv->base + NPCM_PSPI_DATA);
		break;
	case 2:
		val = FUNC2(priv->base + NPCM_PSPI_DATA);
		break;
	default:
		FUNC0(1);
		return;
	}

	*priv->rx_buf = val;
	priv->rx_buf += rsize;
}