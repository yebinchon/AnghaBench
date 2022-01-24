#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_2__ {int base; int ngpio; } ;
struct npcm7xx_gpio {scalar_t__ base; TYPE_1__ gc; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ NPCM7XX_GP_N_DBNC ; 
 scalar_t__ NPCM7XX_GP_N_DIN ; 
 scalar_t__ NPCM7XX_GP_N_DOUT ; 
 scalar_t__ NPCM7XX_GP_N_EVBE ; 
 scalar_t__ NPCM7XX_GP_N_EVEN ; 
 scalar_t__ NPCM7XX_GP_N_EVST ; 
 scalar_t__ NPCM7XX_GP_N_EVTYP ; 
 scalar_t__ NPCM7XX_GP_N_IEM ; 
 scalar_t__ NPCM7XX_GP_N_MPLCK ; 
 scalar_t__ NPCM7XX_GP_N_OBL0 ; 
 scalar_t__ NPCM7XX_GP_N_OBL1 ; 
 scalar_t__ NPCM7XX_GP_N_OBL2 ; 
 scalar_t__ NPCM7XX_GP_N_OBL3 ; 
 scalar_t__ NPCM7XX_GP_N_ODSC ; 
 scalar_t__ NPCM7XX_GP_N_OE ; 
 scalar_t__ NPCM7XX_GP_N_OSRC ; 
 scalar_t__ NPCM7XX_GP_N_OTYP ; 
 scalar_t__ NPCM7XX_GP_N_PD ; 
 scalar_t__ NPCM7XX_GP_N_POL ; 
 scalar_t__ NPCM7XX_GP_N_PU ; 
 scalar_t__ NPCM7XX_GP_N_SPLCK ; 
 struct npcm7xx_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,int,...) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, struct gpio_chip *chip)
{
	struct npcm7xx_gpio *bank = FUNC0(chip);

	FUNC2(s, "-- module %d [gpio%d - %d]\n",
		   bank->gc.base / bank->gc.ngpio,
		   bank->gc.base,
		   bank->gc.base + bank->gc.ngpio);
	FUNC2(s, "DIN :%.8x DOUT:%.8x IE  :%.8x OE	 :%.8x\n",
		   FUNC1(bank->base + NPCM7XX_GP_N_DIN),
		   FUNC1(bank->base + NPCM7XX_GP_N_DOUT),
		   FUNC1(bank->base + NPCM7XX_GP_N_IEM),
		   FUNC1(bank->base + NPCM7XX_GP_N_OE));
	FUNC2(s, "PU  :%.8x PD  :%.8x DB  :%.8x POL :%.8x\n",
		   FUNC1(bank->base + NPCM7XX_GP_N_PU),
		   FUNC1(bank->base + NPCM7XX_GP_N_PD),
		   FUNC1(bank->base + NPCM7XX_GP_N_DBNC),
		   FUNC1(bank->base + NPCM7XX_GP_N_POL));
	FUNC2(s, "ETYP:%.8x EVBE:%.8x EVEN:%.8x EVST:%.8x\n",
		   FUNC1(bank->base + NPCM7XX_GP_N_EVTYP),
		   FUNC1(bank->base + NPCM7XX_GP_N_EVBE),
		   FUNC1(bank->base + NPCM7XX_GP_N_EVEN),
		   FUNC1(bank->base + NPCM7XX_GP_N_EVST));
	FUNC2(s, "OTYP:%.8x OSRC:%.8x ODSC:%.8x\n",
		   FUNC1(bank->base + NPCM7XX_GP_N_OTYP),
		   FUNC1(bank->base + NPCM7XX_GP_N_OSRC),
		   FUNC1(bank->base + NPCM7XX_GP_N_ODSC));
	FUNC2(s, "OBL0:%.8x OBL1:%.8x OBL2:%.8x OBL3:%.8x\n",
		   FUNC1(bank->base + NPCM7XX_GP_N_OBL0),
		   FUNC1(bank->base + NPCM7XX_GP_N_OBL1),
		   FUNC1(bank->base + NPCM7XX_GP_N_OBL2),
		   FUNC1(bank->base + NPCM7XX_GP_N_OBL3));
	FUNC2(s, "SLCK:%.8x MLCK:%.8x\n",
		   FUNC1(bank->base + NPCM7XX_GP_N_SPLCK),
		   FUNC1(bank->base + NPCM7XX_GP_N_MPLCK));
}