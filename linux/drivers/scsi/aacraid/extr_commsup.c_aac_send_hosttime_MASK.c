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
struct timespec64 {int /*<<< orphan*/  tv_sec; } ;
struct fib {int dummy; } ;
struct aac_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FsaNormal ; 
 int /*<<< orphan*/  SendHostTime ; 
 struct fib* FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct fib*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct fib*) ; 

int FUNC7(struct aac_dev *dev, struct timespec64 *now)
{
	int ret = -ENOMEM;
	struct fib *fibptr;
	__le32 *info;

	fibptr = FUNC0(dev);
	if (!fibptr)
		goto out;

	FUNC3(fibptr);
	info = (__le32 *)FUNC6(fibptr);
	*info = FUNC5(now->tv_sec); /* overflow in y2106 */
	ret = FUNC4(SendHostTime, fibptr, sizeof(*info), FsaNormal,
					1, 1, NULL, NULL);

	/*
	 * Do not set XferState to zero unless
	 * receives a response from F/W
	 */
	if (ret >= 0)
		FUNC1(fibptr);

	/*
	 * FIB should be freed only after
	 * getting the response from the F/W
	 */
	if (ret != -ERESTARTSYS)
		FUNC2(fibptr);

out:
	return ret;
}