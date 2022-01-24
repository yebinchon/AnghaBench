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
struct spi_master {int dummy; } ;
struct npcm_pspi {int dummy; } ;

/* Variables and functions */
 int NPCM_PSPI_CTL1_EIR ; 
 int NPCM_PSPI_CTL1_EIW ; 
 int /*<<< orphan*/  FUNC0 (struct npcm_pspi*,int) ; 
 struct npcm_pspi* FUNC1 (struct spi_master*) ; 

__attribute__((used)) static int FUNC2(struct spi_master *master)
{
	struct npcm_pspi *priv = FUNC1(master);

	FUNC0(priv, NPCM_PSPI_CTL1_EIR | NPCM_PSPI_CTL1_EIW);

	return 0;
}