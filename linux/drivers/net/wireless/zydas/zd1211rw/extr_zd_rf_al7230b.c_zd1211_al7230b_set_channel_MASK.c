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
struct zd_ioreq16 {int member_1; int /*<<< orphan*/  member_0; } ;
typedef  struct zd_ioreq16 u32 ;
struct zd_rf {int dummy; } ;
struct zd_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct zd_ioreq16 const*) ; 
#define  ZD_CR203 130 
#define  ZD_CR240 129 
#define  ZD_CR251 128 
 struct zd_ioreq16** chan_rv ; 
 struct zd_ioreq16 const* ioreqs_sw ; 
 struct zd_ioreq16 const* std_rv ; 
 int FUNC1 (struct zd_chip*,int,int /*<<< orphan*/  const) ; 
 int FUNC2 (struct zd_chip*,struct zd_ioreq16 const*,int) ; 
 struct zd_chip* FUNC3 (struct zd_rf*) ; 
 int FUNC4 (struct zd_chip*,int) ; 
 int FUNC5 (struct zd_chip*,struct zd_ioreq16 const*,int) ; 

__attribute__((used)) static int FUNC6(struct zd_rf *rf, u8 channel)
{
	int r;
	const u32 *rv = chan_rv[channel-1];
	struct zd_chip *chip = FUNC3(rf);

	static const struct zd_ioreq16 ioreqs[] = {
		/* PLL_ON */
		{ ZD_CR251, 0x3f },
		{ ZD_CR203, 0x06 }, { ZD_CR240, 0x08 },
	};

	r = FUNC1(chip, 0x57, ZD_CR240);
	if (r)
		return r;

	/* PLL_OFF */
	r = FUNC1(chip, 0x2f, ZD_CR251);
	if (r)
		return r;

	r = FUNC5(chip, std_rv, FUNC0(std_rv));
	if (r)
		return r;

	r = FUNC4(chip, 0x3c9000);
	if (r)
		return r;
	r = FUNC4(chip, 0xf15d58);
	if (r)
		return r;

	r = FUNC2(chip, ioreqs_sw, FUNC0(ioreqs_sw));
	if (r)
		return r;

	r = FUNC5(chip, rv, 2);
	if (r)
		return r;

	r = FUNC4(chip, 0x3c9000);
	if (r)
		return r;

	return FUNC2(chip, ioreqs, FUNC0(ioreqs));
}