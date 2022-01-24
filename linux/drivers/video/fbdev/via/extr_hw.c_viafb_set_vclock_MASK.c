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
typedef  int /*<<< orphan*/  u32 ;
struct via_pll_config {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_secondary_pll ) (struct via_pll_config) ;int /*<<< orphan*/  (* set_primary_pll ) (struct via_pll_config) ;} ;

/* Variables and functions */
 int IGA1 ; 
 int IGA2 ; 
 TYPE_1__ clock ; 
 struct via_pll_config FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct via_pll_config) ; 
 int /*<<< orphan*/  FUNC2 (struct via_pll_config) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void FUNC4(u32 clk, int set_iga)
{
	struct via_pll_config config = FUNC0(clk);

	if (set_iga == IGA1)
		clock.set_primary_pll(config);
	if (set_iga == IGA2)
		clock.set_secondary_pll(config);

	/* Fire! */
	FUNC3(0x0C, 0x0C); /* select external clock */
}