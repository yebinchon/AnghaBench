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
struct cachefiles_cache {char* rootdirname; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct cachefiles_cache *cache, char *args)
{
	char *dir;

	FUNC0(",%s", args);

	if (!*args) {
		FUNC2("Empty directory specified\n");
		return -EINVAL;
	}

	if (cache->rootdirname) {
		FUNC2("Second cache directory specified\n");
		return -EEXIST;
	}

	dir = FUNC1(args, GFP_KERNEL);
	if (!dir)
		return -ENOMEM;

	cache->rootdirname = dir;
	return 0;
}