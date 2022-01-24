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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int aspm_policy ; 
 char** policy_str ; 
 scalar_t__ FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC2(char *buffer, const struct kernel_param *kp)
{
	int i, cnt = 0;
	for (i = 0; i < FUNC0(policy_str); i++)
		if (i == aspm_policy)
			cnt += FUNC1(buffer + cnt, "[%s] ", policy_str[i]);
		else
			cnt += FUNC1(buffer + cnt, "%s ", policy_str[i]);
	return cnt;
}