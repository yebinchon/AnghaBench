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
struct us_data {int max_lun; struct rts51x_chip* extra; int /*<<< orphan*/  extra_destructor; } ;
struct rts51x_status {int dummy; } ;
struct rts51x_chip {int max_lun; int flag; struct rts51x_chip* status; struct us_data* us; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rts51x_chip*,int) ; 
 scalar_t__ FUNC1 (struct rts51x_chip*,int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct rts51x_chip*) ; 
 int FUNC3 (struct rts51x_chip*) ; 
 scalar_t__ FUNC4 (struct rts51x_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct rts51x_chip*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct us_data*) ; 
 int /*<<< orphan*/  realtek_cr_destructor ; 
 int FUNC9 (struct us_data*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct us_data*) ; 
 scalar_t__ ss_en ; 
 int /*<<< orphan*/  FUNC11 (struct us_data*,char*,int) ; 

__attribute__((used)) static int FUNC12(struct us_data *us)
{
	struct rts51x_chip *chip;
	int size, i, retval;

	chip = FUNC7(sizeof(struct rts51x_chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	us->extra = chip;
	us->extra_destructor = realtek_cr_destructor;
	us->max_lun = chip->max_lun = FUNC10(us);
	chip->us = us;

	FUNC11(us, "chip->max_lun = %d\n", chip->max_lun);

	size = (chip->max_lun + 1) * sizeof(struct rts51x_status);
	chip->status = FUNC7(size, GFP_KERNEL);
	if (!chip->status)
		goto INIT_FAIL;

	for (i = 0; i <= (int)(chip->max_lun); i++) {
		retval = FUNC9(us, (u8) i);
		if (retval < 0)
			goto INIT_FAIL;
	}

	if (FUNC1(chip, 0x0138) || FUNC1(chip, 0x0158) ||
	    FUNC1(chip, 0x0159)) {
		if (FUNC0(chip, 0x5888) || FUNC0(chip, 0x5889) ||
				FUNC0(chip, 0x5901))
			FUNC2(chip);
		if (FUNC3(chip) == 16) {
			if (FUNC4(chip))
				FUNC2(chip);
		}
	}
#ifdef CONFIG_REALTEK_AUTOPM
	if (ss_en)
		realtek_cr_autosuspend_setup(us);
#endif

	FUNC11(us, "chip->flag = 0x%x\n", chip->flag);

	(void)FUNC5(us);

	return 0;

INIT_FAIL:
	if (us->extra) {
		FUNC6(chip->status);
		FUNC6(us->extra);
		us->extra = NULL;
	}

	return -EIO;
}