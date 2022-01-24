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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static bool FUNC3(const char *idstr, const char *match, size_t len)
{
	size_t matchlen;

	if (!match)
		return true;

	matchlen = FUNC2(match);
	FUNC0(matchlen > len);

	if (FUNC1(idstr, match, matchlen))
		return false;

	for (; matchlen < len; matchlen++)
		if (idstr[matchlen] != ' ')
			return false;

	return true;
}