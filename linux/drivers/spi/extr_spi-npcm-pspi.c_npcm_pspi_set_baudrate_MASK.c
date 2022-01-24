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
typedef  int u16 ;
struct npcm_pspi {scalar_t__ base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ NPCM_PSPI_CTL1 ; 
 int NPCM_PSPI_CTL1_SCDV6_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct npcm_pspi *priv, unsigned int speed)
{
	u32 ckdiv;
	u16 regtemp;

	/* the supported rates are numbers from 4 to 256. */
	ckdiv = FUNC0(FUNC1(priv->clk), (2 * speed)) - 1;

	regtemp = FUNC2(NPCM_PSPI_CTL1 + priv->base);
	regtemp &= ~NPCM_PSPI_CTL1_SCDV6_0;
	FUNC3(regtemp | (ckdiv << 9), NPCM_PSPI_CTL1 + priv->base);
}