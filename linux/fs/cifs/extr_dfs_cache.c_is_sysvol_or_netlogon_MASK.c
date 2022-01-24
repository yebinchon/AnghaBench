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
 char* FUNC0 (char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(const char *path)
{
	const char *s;
	char sep = path[0];

	s = FUNC0(path + 1, sep) + 1;
	return !FUNC2(s, "sysvol", FUNC1("sysvol")) ||
		!FUNC2(s, "netlogon", FUNC1("netlogon"));
}