#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vol ;
struct smb_vol {int dummy; } ;
struct dfs_info3_param {int /*<<< orphan*/  member_0; } ;
struct dfs_cache_vol_info {int /*<<< orphan*/  vi_mntdata; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifs_ses {int dummy; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; } ;
struct TYPE_6__ {TYPE_2__* server; } ;
struct TYPE_5__ {TYPE_1__* vals; } ;
struct TYPE_4__ {scalar_t__ header_preamble_size; } ;

/* Variables and functions */
 scalar_t__ CifsGood ; 
 int EHOSTDOWN ; 
 struct cifs_ses* FUNC0 (char*) ; 
 struct cifs_ses* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_vol*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,struct dfs_info3_param*,char**) ; 
 struct TCP_Server_Info* FUNC6 (struct smb_vol*) ; 
 struct cifs_ses* FUNC7 (struct TCP_Server_Info*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC8 (struct TCP_Server_Info*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct smb_vol*,char*,char*,int) ; 
 int FUNC10 (char*,struct dfs_info3_param*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct dfs_info3_param*) ; 
 char* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct smb_vol*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct cifs_ses *FUNC15(struct dfs_cache_vol_info *vi,
				      struct cifs_tcon *tcon, const char *path)
{
	char *rpath;
	int rc;
	struct dfs_info3_param ref = {0};
	char *mdata = NULL, *devname = NULL;
	bool is_smb3 = tcon->ses->server->vals->header_preamble_size == 0;
	struct TCP_Server_Info *server;
	struct cifs_ses *ses;
	struct smb_vol vol;

	rpath = FUNC12(path);
	if (FUNC2(rpath))
		return FUNC0(rpath);

	FUNC14(&vol, 0, sizeof(vol));

	rc = FUNC10(rpath, &ref, NULL);
	if (rc) {
		ses = FUNC1(rc);
		goto out;
	}

	mdata = FUNC5(vi->vi_mntdata, rpath, &ref,
					   &devname);
	FUNC11(&ref);

	if (FUNC2(mdata)) {
		ses = FUNC0(mdata);
		mdata = NULL;
		goto out;
	}

	rc = FUNC9(&vol, mdata, devname, is_smb3);
	FUNC13(devname);

	if (rc) {
		ses = FUNC1(rc);
		goto out;
	}

	server = FUNC6(&vol);
	if (FUNC3(server)) {
		ses = FUNC1(-EHOSTDOWN);
		goto out;
	}
	if (server->tcpStatus != CifsGood) {
		FUNC8(server, 0);
		ses = FUNC1(-EHOSTDOWN);
		goto out;
	}

	ses = FUNC7(server, &vol);

out:
	FUNC4(&vol);
	FUNC13(mdata);
	FUNC13(rpath);

	return ses;
}