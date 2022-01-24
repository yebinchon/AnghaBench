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
struct aspeed_lpc_snoop {TYPE_1__* chan; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  miscdev; int /*<<< orphan*/  fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  HICR5 ; 
 int HICR5_ENINT_SNP0W ; 
 int HICR5_ENINT_SNP1W ; 
 int HICR5_EN_SNP0W ; 
 int HICR5_EN_SNP1W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct aspeed_lpc_snoop *lpc_snoop,
				     int channel)
{
	switch (channel) {
	case 0:
		FUNC2(lpc_snoop->regmap, HICR5,
				   HICR5_EN_SNP0W | HICR5_ENINT_SNP0W,
				   0);
		break;
	case 1:
		FUNC2(lpc_snoop->regmap, HICR5,
				   HICR5_EN_SNP1W | HICR5_ENINT_SNP1W,
				   0);
		break;
	default:
		return;
	}

	FUNC0(&lpc_snoop->chan[channel].fifo);
	FUNC1(&lpc_snoop->chan[channel].miscdev);
}