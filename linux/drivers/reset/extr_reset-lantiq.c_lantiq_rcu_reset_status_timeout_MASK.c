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
struct reset_controller_dev {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int LANTIQ_RCU_RESET_TIMEOUT ; 
 int FUNC0 (struct reset_controller_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct reset_controller_dev *rcdev,
					   unsigned long id, bool assert)
{
	int ret;
	int retry = LANTIQ_RCU_RESET_TIMEOUT;

	do {
		ret = FUNC0(rcdev, id);
		if (ret < 0)
			return ret;
		if (ret == assert)
			return 0;
		FUNC1(20, 40);
	} while (--retry);

	return -ETIMEDOUT;
}