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
struct smb347_charger {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  STAT_C ; 
 unsigned int STAT_C_CHG_MASK ; 
 unsigned int STAT_C_CHG_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb347_charger*) ; 

__attribute__((used)) static int FUNC2(struct smb347_charger *smb)
{
	unsigned int val;
	int ret;

	if (!FUNC1(smb))
		return 0;

	ret = FUNC0(smb->regmap, STAT_C, &val);
	if (ret < 0)
		return 0;

	return (val & STAT_C_CHG_MASK) >> STAT_C_CHG_SHIFT;
}