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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static __inline__ int FUNC3(const char *this_opt, const char *name,
				   bool *ret)
{
	if (!ret)
		return 0;

	if (FUNC0(this_opt, name)) {
		if (this_opt[FUNC2(name)] == '=')
			*ret = FUNC1(this_opt + FUNC2(name) + 1,
					      NULL, 0);
		else
			*ret = 1;
	} else {
		if (FUNC0(this_opt, "no") && FUNC0(this_opt + 2, name))
			*ret = 0;
		else
			return 0;
	}
	return 1;
}