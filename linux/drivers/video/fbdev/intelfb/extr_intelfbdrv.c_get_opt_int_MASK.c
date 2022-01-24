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
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*,char const*) ; 

__attribute__((used)) static __inline__ int FUNC2(const char *this_opt, const char *name,
				  int *ret)
{
	if (!ret)
		return 0;

	if (!FUNC0(this_opt, name))
		return 0;

	*ret = FUNC1(this_opt, name);
	return 1;
}