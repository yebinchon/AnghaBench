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
struct zd_ioreq16 {int member_1; int /*<<< orphan*/  member_0; } ;
struct zd_chip {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_ioreq16 const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZD_CR242 ; 
 int /*<<< orphan*/  ZD_CR243 ; 
 int /*<<< orphan*/  ZD_CR244 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct zd_chip*,struct zd_ioreq16 const*,int /*<<< orphan*/ ) ; 

int FUNC4(struct zd_chip *chip, u32 value)
{
	const struct zd_ioreq16 ioreqs[] = {
		{ ZD_CR244, (value >> 16) & 0xff },
		{ ZD_CR243, (value >>  8) & 0xff },
		{ ZD_CR242,  value        & 0xff },
	};
	FUNC1(FUNC2(&chip->mutex));
	return FUNC3(chip, ioreqs, FUNC0(ioreqs));
}