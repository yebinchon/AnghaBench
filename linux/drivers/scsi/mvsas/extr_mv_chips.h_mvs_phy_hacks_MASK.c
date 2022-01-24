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
 int /*<<< orphan*/  CMD_APP_ERR_CONFIG ; 
 int /*<<< orphan*/  CMD_PHY_TIMER ; 
 int /*<<< orphan*/  CMD_SAS_CTL0 ; 
 int /*<<< orphan*/  CMD_SAS_CTL1 ; 
 int /*<<< orphan*/  CMD_WD_TIMER ; 
 int FUNC0 (struct mvs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvs_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct mvs_info *mvi)
{
	u32 tmp;

	tmp = FUNC0(mvi, CMD_PHY_TIMER);
	tmp &= ~(1 << 9);
	tmp |= (1 << 10);
	FUNC1(mvi, CMD_PHY_TIMER, tmp);

	/* enable retry 127 times */
	FUNC1(mvi, CMD_SAS_CTL1, 0x7f7f);

	/* extend open frame timeout to max */
	tmp = FUNC0(mvi, CMD_SAS_CTL0);
	tmp &= ~0xffff;
	tmp |= 0x3fff;
	FUNC1(mvi, CMD_SAS_CTL0, tmp);

	FUNC1(mvi, CMD_WD_TIMER, 0x7a0000);

	/* not to halt for different port op during wideport link change */
	FUNC1(mvi, CMD_APP_ERR_CONFIG, 0xffefbf7d);
}