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
struct file {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t EFAULT ; 
 int expect_close ; 
 scalar_t__ FUNC0 (char,char const*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static ssize_t FUNC2(struct file *file, const char *data,
				size_t len, loff_t *ppos)
{
	if (len) {
		if (!nowayout) {
			size_t i;

			/* In case it was set long ago */
			expect_close = 0;

			for (i = 0; i != len; i++) {
				char c;
				if (FUNC0(c, data + i))
					return -EFAULT;
				if (c == 'V')
					expect_close = 42;
			}
		}
		FUNC1();
		return len;
	}
	return 0;
}