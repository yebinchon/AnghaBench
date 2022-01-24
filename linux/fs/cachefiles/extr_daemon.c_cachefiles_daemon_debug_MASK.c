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
struct cachefiles_cache {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned long cachefiles_debug ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned long FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cachefiles_cache *cache, char *args)
{
	unsigned long mask;

	FUNC0(",%s", args);

	mask = FUNC3(args, &args, 0);
	if (args[0] != '\0')
		goto inval;

	cachefiles_debug = mask;
	FUNC1(" = 0");
	return 0;

inval:
	FUNC2("debug command requires mask\n");
	return -EINVAL;
}