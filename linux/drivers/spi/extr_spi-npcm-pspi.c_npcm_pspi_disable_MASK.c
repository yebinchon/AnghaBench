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
struct npcm_pspi {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ NPCM_PSPI_CTL1 ; 
 int /*<<< orphan*/  NPCM_PSPI_CTL1_SPIEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct npcm_pspi *priv)
{
	u16 val;

	val = FUNC0(priv->base + NPCM_PSPI_CTL1);
	val &= ~NPCM_PSPI_CTL1_SPIEN;
	FUNC1(val, priv->base + NPCM_PSPI_CTL1);
}