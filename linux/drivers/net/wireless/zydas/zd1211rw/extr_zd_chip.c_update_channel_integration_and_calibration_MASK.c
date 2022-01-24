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
typedef  int /*<<< orphan*/  u8 ;
struct zd_ioreq16 {int member_1; int /*<<< orphan*/  const member_0; } ;
struct zd_chip {int /*<<< orphan*/  rf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_ioreq16 const*) ; 
#define  ZD_CR69 128 
 int FUNC1 (struct zd_chip*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct zd_chip*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct zd_chip*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct zd_chip*) ; 
 int FUNC5 (struct zd_chip*,struct zd_ioreq16 const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct zd_chip *chip,
	                                              u8 channel)
{
	int r;

	if (!FUNC6(&chip->rf))
		return 0;

	r = FUNC3(chip, channel);
	if (r)
		return r;
	if (FUNC4(chip)) {
		static const struct zd_ioreq16 ioreqs[] = {
			{ ZD_CR69, 0x28 },
			{},
			{ ZD_CR69, 0x2a },
		};

		r = FUNC1(chip, channel);
		if (r)
			return r;
		r = FUNC2(chip, channel);
		if (r)
			return r;
		r = FUNC5(chip, ioreqs, FUNC0(ioreqs));
		if (r)
			return r;
	}

	return 0;
}