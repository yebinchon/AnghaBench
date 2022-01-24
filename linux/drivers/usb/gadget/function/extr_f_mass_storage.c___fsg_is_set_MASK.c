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
struct fsg_common {scalar_t__ fsg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_common*,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(struct fsg_common *common,
			       const char *func, unsigned line)
{
	if (common->fsg)
		return 1;
	FUNC0(common, "common->fsg is NULL in %s at %u\n", func, line);
	FUNC1(1);
	return 0;
}