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
struct hw_fib {int dummy; } ;
struct fib {int dummy; } ;
struct aac_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hw_fib*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct aac_dev *dev, struct hw_fib **hw_fib_pool,
						struct fib **fib_pool,
						unsigned int num)
{
	struct hw_fib **hw_fib_p;
	struct fib **fib_p;

	hw_fib_p = hw_fib_pool;
	fib_p = fib_pool;
	while (hw_fib_p < &hw_fib_pool[num]) {
		*(hw_fib_p) = FUNC1(sizeof(struct hw_fib), GFP_KERNEL);
		if (!(*(hw_fib_p++))) {
			--hw_fib_p;
			break;
		}

		*(fib_p) = FUNC1(sizeof(struct fib), GFP_KERNEL);
		if (!(*(fib_p++))) {
			FUNC0(*(--hw_fib_p));
			break;
		}
	}

	/*
	 * Get the actual number of allocated fibs
	 */
	num = hw_fib_p - hw_fib_pool;
	return num;
}