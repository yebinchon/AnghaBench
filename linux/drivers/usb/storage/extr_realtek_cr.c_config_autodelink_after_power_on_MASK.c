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
struct us_data {scalar_t__ extra; } ;
struct rts51x_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rts51x_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rts51x_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct us_data*,int*,int) ; 
 scalar_t__ auto_delink_en ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct us_data*) ; 
 int FUNC7 (struct us_data*,int,int*,int) ; 
 int FUNC8 (struct us_data*,int,int*,int) ; 

__attribute__((used)) static int FUNC9(struct us_data *us)
{
	struct rts51x_chip *chip = (struct rts51x_chip *)(us->extra);
	int retval;
	u8 value;

	if (!FUNC1(chip))
		return 0;

	retval = FUNC7(us, 0xFE47, &value, 1);
	if (retval < 0)
		return -EIO;

	if (auto_delink_en) {
		FUNC2(value, 0);
		FUNC2(value, 1);
		FUNC3(value, 2);

		if (FUNC0(chip, 0x0138, 0x3882))
			FUNC2(value, 2);

		FUNC3(value, 7);

		/* retval = rts51x_write_mem(us, 0xFE47, &value, 1); */
		retval = FUNC4(us, &value, 1);
		if (retval < 0)
			return -EIO;

		retval = FUNC6(us);
		if (retval == 0)
			(void)FUNC5(us, 1, 0);
	} else {
		/* Autodelink controlled by firmware */

		FUNC3(value, 2);

		if (FUNC0(chip, 0x0138, 0x3882))
			FUNC2(value, 2);

		if (FUNC0(chip, 0x0159, 0x5889) ||
		    FUNC0(chip, 0x0138, 0x3880)) {
			FUNC2(value, 0);
			FUNC2(value, 7);
		}

		/* retval = rts51x_write_mem(us, 0xFE47, &value, 1); */
		retval = FUNC4(us, &value, 1);
		if (retval < 0)
			return -EIO;

		if (FUNC0(chip, 0x0159, 0x5888)) {
			value = 0xFF;
			retval = FUNC8(us, 0xFE79, &value, 1);
			if (retval < 0)
				return -EIO;

			value = 0x01;
			retval = FUNC8(us, 0x48, &value, 1);
			if (retval < 0)
				return -EIO;
		}
	}

	return 0;
}