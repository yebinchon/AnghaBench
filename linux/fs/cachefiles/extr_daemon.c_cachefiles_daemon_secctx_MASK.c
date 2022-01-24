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
struct cachefiles_cache {char* secctx; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct cachefiles_cache *cache, char *args)
{
	char *secctx;

	FUNC0(",%s", args);

	if (!*args) {
		FUNC2("Empty security context specified\n");
		return -EINVAL;
	}

	if (cache->secctx) {
		FUNC2("Second security context specified\n");
		return -EINVAL;
	}

	secctx = FUNC1(args, GFP_KERNEL);
	if (!secctx)
		return -ENOMEM;

	cache->secctx = secctx;
	return 0;
}