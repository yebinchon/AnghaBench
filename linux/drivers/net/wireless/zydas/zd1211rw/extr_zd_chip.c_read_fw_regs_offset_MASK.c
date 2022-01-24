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
typedef  int /*<<< orphan*/  u16 ;
struct zd_chip {scalar_t__ fw_regs_base; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWRAW_REGS_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_chip*) ; 
 int FUNC4 (struct zd_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct zd_chip *chip)
{
	int r;

	FUNC0(FUNC2(&chip->mutex));
	r = FUNC4(chip, (u16*)&chip->fw_regs_base,
		               FWRAW_REGS_ADDR);
	if (r)
		return r;
	FUNC1(FUNC3(chip), "fw_regs_base: %#06hx\n",
		  (u16)chip->fw_regs_base);

	return 0;
}