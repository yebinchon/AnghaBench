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
struct bq25890_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  F_REG_RST ; 
 int FUNC0 (struct bq25890_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bq25890_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct bq25890_device *bq)
{
	int ret;
	int rst_check_counter = 10;

	ret = FUNC1(bq, F_REG_RST, 1);
	if (ret < 0)
		return ret;

	do {
		ret = FUNC0(bq, F_REG_RST);
		if (ret < 0)
			return ret;

		FUNC2(5, 10);
	} while (ret == 1 && --rst_check_counter);

	if (!rst_check_counter)
		return -ETIMEDOUT;

	return 0;
}