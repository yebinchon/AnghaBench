#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dfs_info3_param {int dummy; } ;
struct dfs_cache_vol_info {int dummy; } ;
struct dfs_cache_entry {TYPE_2__* server; } ;
struct dfs_cache {int /*<<< orphan*/  dc_nlsc; } ;
struct cifs_tcon {char* dfs_path; int /*<<< orphan*/  remap; struct dfs_cache_entry* ses; } ;
struct cifs_ses {TYPE_2__* server; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_dfs_refer ) (unsigned int,struct dfs_cache_entry*,char*,struct dfs_info3_param**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct dfs_cache_entry*) ; 
 int FUNC1 (struct dfs_cache_entry*) ; 
 struct dfs_cache_entry* FUNC2 (char*,struct dfs_info3_param*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dfs_cache_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dfs_cache_entry*) ; 
 int /*<<< orphan*/  dfs_cache_list_lock ; 
 int /*<<< orphan*/  FUNC5 (struct dfs_info3_param*,int) ; 
 struct dfs_cache_entry* FUNC6 (char*,unsigned int*) ; 
 struct dfs_cache_entry* FUNC7 (struct dfs_cache_vol_info*,struct cifs_tcon*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct dfs_info3_param*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int FUNC11 (char*,char**) ; 
 unsigned int FUNC12 () ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (unsigned int,struct dfs_cache_entry*,char*,struct dfs_info3_param**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(struct dfs_cache *dc, struct dfs_cache_vol_info *vi,
			    struct cifs_tcon *tcon)
{
	int rc = 0;
	unsigned int xid;
	char *path, *npath;
	unsigned int h;
	struct dfs_cache_entry *ce;
	struct dfs_info3_param *refs = NULL;
	int numrefs = 0;
	struct cifs_ses *root_ses = NULL, *ses;

	xid = FUNC12();

	path = tcon->dfs_path + 1;

	rc = FUNC11(path, &npath);
	if (rc)
		goto out;

	FUNC14(&dfs_cache_list_lock);
	ce = FUNC6(npath, &h);
	FUNC15(&dfs_cache_list_lock);

	if (FUNC0(ce)) {
		rc = FUNC1(ce);
		goto out;
	}

	if (!FUNC3(ce))
		goto out;

	/* If it's a DFS Link, then use root SMB session for refreshing it */
	if (FUNC13(npath)) {
		ses = root_ses = FUNC7(vi, tcon, npath);
		if (FUNC0(ses)) {
			rc = FUNC1(ses);
			root_ses = NULL;
			goto out;
		}
	} else {
		ses = tcon->ses;
	}

	if (FUNC17(!ses->server->ops->get_dfs_refer)) {
		rc = -EOPNOTSUPP;
	} else {
		rc = ses->server->ops->get_dfs_refer(xid, ses, path, &refs,
						     &numrefs, dc->dc_nlsc,
						     tcon->remap);
		if (!rc) {
			FUNC14(&dfs_cache_list_lock);
			ce = FUNC2(npath, refs, numrefs);
			FUNC15(&dfs_cache_list_lock);
			FUNC5(refs, numrefs);
			FUNC8(refs, numrefs);
			if (FUNC0(ce))
				rc = FUNC1(ce);
		}
	}

out:
	if (root_ses)
		FUNC4(root_ses);

	FUNC10(xid);
	FUNC9(path, npath);
}