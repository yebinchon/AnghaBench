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
struct pmic_wrapper {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct pmic_wrapper *wrp,
		bool (*fp)(struct pmic_wrapper *))
{
	unsigned long timeout;

	timeout = jiffies + FUNC1(10000);

	do {
		if (FUNC0(jiffies, timeout))
			return fp(wrp) ? 0 : -ETIMEDOUT;
		if (fp(wrp))
			return 0;
	} while (1);
}