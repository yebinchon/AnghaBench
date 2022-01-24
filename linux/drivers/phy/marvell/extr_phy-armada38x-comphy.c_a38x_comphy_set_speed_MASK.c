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
struct a38x_comphy_lane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPHY_CFG1 ; 
 int FUNC0 (unsigned int) ; 
 int COMPHY_CFG1_GEN_RX_MSK ; 
 int FUNC1 (unsigned int) ; 
 int COMPHY_CFG1_GEN_TX_MSK ; 
 int /*<<< orphan*/  FUNC2 (struct a38x_comphy_lane*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct a38x_comphy_lane *lane,
				  unsigned int gen_tx, unsigned int gen_rx)
{
	FUNC2(lane, COMPHY_CFG1,
			    COMPHY_CFG1_GEN_TX_MSK | COMPHY_CFG1_GEN_RX_MSK,
			    FUNC1(gen_tx) |
		            FUNC0(gen_rx));
}