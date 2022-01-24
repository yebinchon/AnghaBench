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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int /*<<< orphan*/  member_0; } ;
struct zd_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_ioreq16 const*) ; 
 int /*<<< orphan*/  RF_RV_BITS ; 
#define  ZD_CR138 129 
#define  ZD_CR203 128 
 int /*<<< orphan*/ ** zd1211_al2230_table ; 
 int FUNC1 (struct zd_chip*,struct zd_ioreq16 const*,int /*<<< orphan*/ ) ; 
 struct zd_chip* FUNC2 (struct zd_rf*) ; 
 int FUNC3 (struct zd_chip*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct zd_rf *rf, u8 channel)
{
	int r;
	const u32 *rv = zd1211_al2230_table[channel-1];
	struct zd_chip *chip = FUNC2(rf);
	static const struct zd_ioreq16 ioreqs[] = {
		{ ZD_CR138, 0x28 },
		{ ZD_CR203, 0x06 },
	};

	r = FUNC3(chip, rv, 3, RF_RV_BITS);
	if (r)
		return r;
	return FUNC1(chip, ioreqs, FUNC0(ioreqs));
}