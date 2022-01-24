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
struct ab8500_charger {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_CH_OPT_CRNTLVL_REG ; 
 int FUNC0 (struct ab8500_charger*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ab8500_charger *di,
	int ich_out)
{
	return FUNC0(di, ich_out,
		AB8500_CH_OPT_CRNTLVL_REG);
}