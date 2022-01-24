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
typedef  int uint32_t ;
struct path {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct dentry {struct dentry* d_parent; } ;
struct cachefiles_object {int dummy; } ;
struct cachefiles_cache {struct dentry* graveyard; int /*<<< orphan*/  mnt; int /*<<< orphan*/  gravecounter; } ;
typedef  enum fscache_why_object_killed { ____Placeholder_fscache_why_object_killed } fscache_why_object_killed ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cachefiles_cache*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct cachefiles_cache*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 scalar_t__ FUNC13 (struct dentry*) ; 
 scalar_t__ FUNC14 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 () ; 
 struct dentry* FUNC18 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC19 (char*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct path*,struct dentry*,struct path*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct path*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (struct cachefiles_object*,struct dentry*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct cachefiles_object*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct dentry*,struct dentry*) ; 
 int FUNC27 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct cachefiles_cache *cache,
				  struct cachefiles_object *object,
				  struct dentry *dir,
				  struct dentry *rep,
				  bool preemptive,
				  enum fscache_why_object_killed why)
{
	struct dentry *grave, *trap;
	struct path path, path_to_graveyard;
	char nbuffer[8 + 8 + 1];
	int ret;

	FUNC4(",'%pd','%pd'", dir, rep);

	FUNC3("remove %p from %p", rep, dir);

	/* non-directories can just be unlinked */
	if (!FUNC12(rep)) {
		FUNC3("unlink stale object");

		path.mnt = cache->mnt;
		path.dentry = dir;
		ret = FUNC21(&path, rep);
		if (ret < 0) {
			FUNC7(cache, "Unlink security error");
		} else {
			FUNC25(object, rep, why);
			ret = FUNC28(FUNC11(dir), rep, NULL);

			if (preemptive)
				FUNC8(cache, rep, why);
		}

		FUNC16(FUNC11(dir));

		if (ret == -EIO)
			FUNC7(cache, "Unlink failed");

		FUNC5(" = %d", ret);
		return ret;
	}

	/* directories have to be moved to the graveyard */
	FUNC3("move stale object to graveyard");
	FUNC16(FUNC11(dir));

try_again:
	/* first step is to make up a grave dentry in the graveyard */
	FUNC22(nbuffer, "%08x%08x",
		(uint32_t) FUNC17(),
		(uint32_t) FUNC6(&cache->gravecounter));

	/* do the multiway lock magic */
	trap = FUNC18(cache->graveyard, dir);

	/* do some checks before getting the grave dentry */
	if (rep->d_parent != dir || FUNC0(FUNC11(rep))) {
		/* the entry was probably culled when we dropped the parent dir
		 * lock */
		FUNC26(cache->graveyard, dir);
		FUNC5(" = 0 [culled?]");
		return 0;
	}

	if (!FUNC10(cache->graveyard)) {
		FUNC26(cache->graveyard, dir);
		FUNC7(cache, "Graveyard no longer a directory");
		return -EIO;
	}

	if (trap == rep) {
		FUNC26(cache->graveyard, dir);
		FUNC7(cache, "May not make directory loop");
		return -EIO;
	}

	if (FUNC14(rep)) {
		FUNC26(cache->graveyard, dir);
		FUNC7(cache, "Mountpoint in cache");
		return -EIO;
	}

	grave = FUNC19(nbuffer, cache->graveyard, FUNC23(nbuffer));
	if (FUNC1(grave)) {
		FUNC26(cache->graveyard, dir);

		if (FUNC2(grave) == -ENOMEM) {
			FUNC5(" = -ENOMEM");
			return -ENOMEM;
		}

		FUNC7(cache, "Lookup error %ld",
				    FUNC2(grave));
		return -EIO;
	}

	if (FUNC13(grave)) {
		FUNC26(cache->graveyard, dir);
		FUNC15(grave);
		grave = NULL;
		FUNC9();
		goto try_again;
	}

	if (FUNC14(grave)) {
		FUNC26(cache->graveyard, dir);
		FUNC15(grave);
		FUNC7(cache, "Mountpoint in graveyard");
		return -EIO;
	}

	/* target should not be an ancestor of source */
	if (trap == grave) {
		FUNC26(cache->graveyard, dir);
		FUNC15(grave);
		FUNC7(cache, "May not make directory loop");
		return -EIO;
	}

	/* attempt the rename */
	path.mnt = cache->mnt;
	path.dentry = dir;
	path_to_graveyard.mnt = cache->mnt;
	path_to_graveyard.dentry = cache->graveyard;
	ret = FUNC20(&path, rep, &path_to_graveyard, grave, 0);
	if (ret < 0) {
		FUNC7(cache, "Rename security error %d", ret);
	} else {
		FUNC24(object, rep, grave, why);
		ret = FUNC27(FUNC11(dir), rep,
				 FUNC11(cache->graveyard), grave, NULL, 0);
		if (ret != 0 && ret != -ENOMEM)
			FUNC7(cache,
					    "Rename failed with error %d", ret);

		if (preemptive)
			FUNC8(cache, rep, why);
	}

	FUNC26(cache->graveyard, dir);
	FUNC15(grave);
	FUNC5(" = 0");
	return 0;
}