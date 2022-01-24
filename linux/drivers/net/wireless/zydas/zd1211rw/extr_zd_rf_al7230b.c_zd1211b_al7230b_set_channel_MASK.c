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
struct zd_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ZD_CR240 ; 
 int /*<<< orphan*/  ZD_CR251 ; 
 int /*<<< orphan*/  ZD_CR9 ; 
 int /*<<< orphan*/ ** chan_rv ; 
 int /*<<< orphan*/  const* ioreqs_sw ; 
 int /*<<< orphan*/  const* std_rv ; 
 int FUNC1 (struct zd_chip*) ; 
 int FUNC2 (struct zd_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct zd_chip*,int /*<<< orphan*/  const*,int) ; 
 struct zd_chip* FUNC4 (struct zd_rf*) ; 
 int FUNC5 (struct zd_chip*,int) ; 
 int FUNC6 (struct zd_chip*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC7(struct zd_rf *rf, u8 channel)
{
	int r;
	const u32 *rv = chan_rv[channel-1];
	struct zd_chip *chip = FUNC4(rf);

	r = FUNC2(chip, 0x57, ZD_CR240);
	if (r)
		return r;
	r = FUNC2(chip, 0xe4, ZD_CR9);
	if (r)
		return r;

	/* PLL_OFF */
	r = FUNC2(chip, 0x2f, ZD_CR251);
	if (r)
		return r;
	r = FUNC6(chip, std_rv, FUNC0(std_rv));
	if (r)
		return r;

	r = FUNC5(chip, 0x3c9000);
	if (r)
		return r;
	r = FUNC5(chip, 0xf15d58);
	if (r)
		return r;

	r = FUNC3(chip, ioreqs_sw, FUNC0(ioreqs_sw));
	if (r)
		return r;

	r = FUNC6(chip, rv, 2);
	if (r)
		return r;

	r = FUNC5(chip, 0x3c9000);
	if (r)
		return r;

	r = FUNC2(chip, 0x7f, ZD_CR251);
	if (r)
		return r;

	return FUNC1(chip);
}