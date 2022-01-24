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
struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int value; int /*<<< orphan*/  member_0; } ;
struct zd_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_ioreq16*) ; 
 int /*<<< orphan*/  ZD_CR128 ; 
 int /*<<< orphan*/  ZD_CR129 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_chip*) ; 
 int FUNC3 (struct zd_chip*,struct zd_ioreq16*,int /*<<< orphan*/ ) ; 
 struct zd_chip* FUNC4 (struct zd_rf*) ; 

__attribute__((used)) static int FUNC5(struct zd_rf *rf, u8 channel)
{
	struct zd_chip *chip = FUNC4(rf);
	struct zd_ioreq16 ioreqs[] = {
		{ ZD_CR128, 0x14 }, { ZD_CR129, 0x12 },
	};

	/* FIXME: Channel 11 is not the edge for all regulatory domains. */
	if (channel == 1) {
		ioreqs[0].value = 0x0e;
		ioreqs[1].value = 0x10;
	} else if (channel == 11) {
		ioreqs[0].value = 0x10;
		ioreqs[1].value = 0x10;
	}

	FUNC1(FUNC2(chip), "patching for channel %d\n", channel);
	return FUNC3(chip, ioreqs, FUNC0(ioreqs));
}