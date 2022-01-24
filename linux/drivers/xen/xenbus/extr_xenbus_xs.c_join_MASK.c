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
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_NOIO ; 
 int __GFP_HIGH ; 
 char* FUNC1 (int,char*,char const*,...) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static char *FUNC3(const char *dir, const char *name)
{
	char *buffer;

	if (FUNC2(name) == 0)
		buffer = FUNC1(GFP_NOIO | __GFP_HIGH, "%s", dir);
	else
		buffer = FUNC1(GFP_NOIO | __GFP_HIGH, "%s/%s", dir, name);
	return (!buffer) ? FUNC0(-ENOMEM) : buffer;
}