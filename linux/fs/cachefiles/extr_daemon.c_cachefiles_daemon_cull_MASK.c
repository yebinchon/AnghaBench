#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct path {int /*<<< orphan*/  dentry; } ;
struct cred {int dummy; } ;
struct cachefiles_cache {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHEFILES_DEAD ; 
 int /*<<< orphan*/  CACHEFILES_READY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cachefiles_cache*,struct cred const**) ; 
 int FUNC3 (struct cachefiles_cache*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cachefiles_cache*,struct cred const*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct cachefiles_cache *cache, char *args)
{
	struct path path;
	const struct cred *saved_cred;
	int ret;

	FUNC0(",%s", args);

	if (FUNC9(args, '/'))
		goto inval;

	if (!FUNC10(CACHEFILES_READY, &cache->flags)) {
		FUNC8("cull applied to unready cache\n");
		return -EIO;
	}

	if (FUNC10(CACHEFILES_DEAD, &cache->flags)) {
		FUNC8("cull applied to dead cache\n");
		return -EIO;
	}

	/* extract the directory dentry from the cwd */
	FUNC6(current->fs, &path);

	if (!FUNC5(path.dentry))
		goto notdir;

	FUNC2(cache, &saved_cred);
	ret = FUNC3(cache, path.dentry, args);
	FUNC4(cache, saved_cred);

	FUNC7(&path);
	FUNC1(" = %d", ret);
	return ret;

notdir:
	FUNC7(&path);
	FUNC8("cull command requires dirfd to be a directory\n");
	return -ENOTDIR;

inval:
	FUNC8("cull command requires dirfd and filename\n");
	return -EINVAL;
}