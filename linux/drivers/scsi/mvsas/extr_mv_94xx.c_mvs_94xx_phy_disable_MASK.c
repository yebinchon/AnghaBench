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
struct mvs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VSR_PHY_MODE2 ; 
 int FUNC0 (struct mvs_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvs_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvs_info*,int,int) ; 

__attribute__((used)) static void FUNC3(struct mvs_info *mvi, u32 phy_id)
{
	u32 tmp;
	FUNC1(mvi, phy_id, VSR_PHY_MODE2);
	tmp = FUNC0(mvi, phy_id);
	FUNC2(mvi, phy_id, tmp | 0x00800000);
}