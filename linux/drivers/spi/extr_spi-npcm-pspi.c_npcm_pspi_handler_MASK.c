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
typedef  int u8 ;
typedef  void* u16 ;
struct npcm_pspi {scalar_t__ tx_bytes; scalar_t__ base; scalar_t__ tx_buf; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  rx_bytes; scalar_t__ rx_buf; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ NPCM_PSPI_DATA ; 
 scalar_t__ NPCM_PSPI_STAT ; 
 int NPCM_PSPI_STAT_BSY ; 
 int NPCM_PSPI_STAT_RBF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct npcm_pspi*) ; 
 int /*<<< orphan*/  FUNC4 (struct npcm_pspi*) ; 
 int /*<<< orphan*/  FUNC5 (struct npcm_pspi*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct npcm_pspi *priv = dev_id;
	u16 val;
	u8 stat;

	stat = FUNC1(priv->base + NPCM_PSPI_STAT);

	if (!priv->tx_buf && !priv->rx_buf)
		return IRQ_NONE;

	if (priv->tx_buf) {
		if (stat & NPCM_PSPI_STAT_RBF) {
			val = FUNC1(NPCM_PSPI_DATA + priv->base);
			if (priv->tx_bytes == 0) {
				FUNC3(priv);
				FUNC0(&priv->xfer_done);
				return IRQ_HANDLED;
			}
		}

		if ((stat & NPCM_PSPI_STAT_BSY) == 0)
			if (priv->tx_bytes)
				FUNC5(priv);
	}

	if (priv->rx_buf) {
		if (stat & NPCM_PSPI_STAT_RBF) {
			if (!priv->rx_bytes)
				return IRQ_NONE;

			FUNC4(priv);

			if (!priv->rx_bytes) {
				FUNC3(priv);
				FUNC0(&priv->xfer_done);
				return IRQ_HANDLED;
			}
		}

		if (((stat & NPCM_PSPI_STAT_BSY) == 0) && !priv->tx_buf)
			FUNC2(0x0, NPCM_PSPI_DATA + priv->base);
	}

	return IRQ_HANDLED;
}