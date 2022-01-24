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
struct cred {int dummy; } ;
struct cachefiles_cache {struct cred* cache_cred; int /*<<< orphan*/  secctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct cred* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cred*) ; 
 int FUNC5 (struct cred*,int /*<<< orphan*/ ) ; 

int FUNC6(struct cachefiles_cache *cache)
{
	struct cred *new;
	int ret;

	FUNC0("{%s}", cache->secctx);

	new = FUNC3(current);
	if (!new) {
		ret = -ENOMEM;
		goto error;
	}

	if (cache->secctx) {
		ret = FUNC5(new, cache->secctx);
		if (ret < 0) {
			FUNC4(new);
			FUNC2("Security denies permission to nominate security context: error %d\n",
			       ret);
			goto error;
		}
	}

	cache->cache_cred = new;
	ret = 0;
error:
	FUNC1(" = %d", ret);
	return ret;
}