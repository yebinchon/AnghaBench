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

/* Variables and functions */
 unsigned long FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,unsigned long) ; 

__attribute__((used)) static int FUNC2(const char *str, const char *start)
{
	unsigned long str_len = 0, start_len = 0;

	str_len = FUNC0(str);
	start_len = FUNC0(start);

	if (str_len >= start_len &&
			!FUNC1(str, start, start_len))
		return 1;

	return 0;
}