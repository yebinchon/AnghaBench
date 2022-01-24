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
struct device {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static bool FUNC3(struct device *dev, const char *suffix)
{
	const char *name = FUNC0(dev);
	const int name_len = FUNC2(name);
	const int suffix_len = FUNC2(suffix);

	if (suffix_len > name_len)
		return false;

	return FUNC1(name + (name_len - suffix_len), suffix) == 0;
}