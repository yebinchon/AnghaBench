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
 int /*<<< orphan*/  FUNC0 (struct cachefiles_cache*,struct cred const**) ; 
 int FUNC1 (struct cachefiles_cache*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cachefiles_cache*,struct cred const*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct cachefiles_cache *cache, char *args)
{
	struct path path;
	const struct cred *saved_cred;
	int ret;

	//_enter(",%s", args);

	if (FUNC7(args, '/'))
		goto inval;

	if (!FUNC8(CACHEFILES_READY, &cache->flags)) {
		FUNC6("inuse applied to unready cache\n");
		return -EIO;
	}

	if (FUNC8(CACHEFILES_DEAD, &cache->flags)) {
		FUNC6("inuse applied to dead cache\n");
		return -EIO;
	}

	/* extract the directory dentry from the cwd */
	FUNC4(current->fs, &path);

	if (!FUNC3(path.dentry))
		goto notdir;

	FUNC0(cache, &saved_cred);
	ret = FUNC1(cache, path.dentry, args);
	FUNC2(cache, saved_cred);

	FUNC5(&path);
	//_leave(" = %d", ret);
	return ret;

notdir:
	FUNC5(&path);
	FUNC6("inuse command requires dirfd to be a directory\n");
	return -ENOTDIR;

inval:
	FUNC6("inuse command requires dirfd and filename\n");
	return -EINVAL;
}