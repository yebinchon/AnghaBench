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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct zd_chip*) ; 
 int /*<<< orphan*/ ** zd1211b_al2230_table ; 
 int /*<<< orphan*/  zd1211b_ioreqs_shared_1 ; 
 int FUNC2 (struct zd_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zd_chip* FUNC3 (struct zd_rf*) ; 
 int FUNC4 (struct zd_chip*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC5(struct zd_rf *rf, u8 channel)
{
	int r;
	const u32 *rv = zd1211b_al2230_table[channel-1];
	struct zd_chip *chip = FUNC3(rf);

	r = FUNC2(chip, zd1211b_ioreqs_shared_1,
		FUNC0(zd1211b_ioreqs_shared_1));
	if (r)
		return r;

	r = FUNC4(chip, rv, 3);
	if (r)
		return r;

	return FUNC1(chip);
}