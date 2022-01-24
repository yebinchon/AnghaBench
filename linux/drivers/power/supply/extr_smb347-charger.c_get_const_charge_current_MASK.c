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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODATA ; 
 int /*<<< orphan*/  STAT_B ; 
 int /*<<< orphan*/  fcc_tbl ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  pcc_tbl ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct smb347_charger*) ; 

__attribute__((used)) static int FUNC4(struct smb347_charger *smb)
{
	int ret, intval;
	unsigned int v;

	if (!FUNC3(smb))
		return -ENODATA;

	ret = FUNC2(smb->regmap, STAT_B, &v);
	if (ret < 0)
		return ret;

	/*
	 * The current value is composition of FCC and PCC values
	 * and we can detect which table to use from bit 5.
	 */
	if (v & 0x20) {
		intval = FUNC1(fcc_tbl, FUNC0(fcc_tbl), v & 7);
	} else {
		v >>= 3;
		intval = FUNC1(pcc_tbl, FUNC0(pcc_tbl), v & 7);
	}

	return intval;
}