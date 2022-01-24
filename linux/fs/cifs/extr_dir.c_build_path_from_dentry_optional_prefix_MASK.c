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
struct TYPE_2__ {int len; int /*<<< orphan*/  name; } ;
struct dentry {struct dentry* d_parent; int /*<<< orphan*/  d_lock; TYPE_1__ d_name; int /*<<< orphan*/  d_sb; } ;
struct cifs_tcon {int /*<<< orphan*/  treeName; } ;
struct cifs_sb_info {int mnt_cifs_flags; char* prepath; } ;

/* Variables and functions */
 char FUNC0 (struct cifs_sb_info*) ; 
 int CIFS_MOUNT_POSIX_PATHS ; 
 int CIFS_MOUNT_USE_PREFIX_PATH ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ MAX_TREE_SIZE ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct cifs_tcon* FUNC4 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 unsigned int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  rename_lock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 

char *
FUNC17(struct dentry *direntry, bool prefix)
{
	struct dentry *temp;
	int namelen;
	int dfsplen;
	int pplen = 0;
	char *full_path;
	char dirsep;
	struct cifs_sb_info *cifs_sb = FUNC1(direntry->d_sb);
	struct cifs_tcon *tcon = FUNC4(cifs_sb);
	unsigned seq;

	dirsep = FUNC0(cifs_sb);
	if (prefix)
		dfsplen = FUNC16(tcon->treeName, MAX_TREE_SIZE + 1);
	else
		dfsplen = 0;

	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_USE_PREFIX_PATH)
		pplen = cifs_sb->prepath ? FUNC14(cifs_sb->prepath) + 1 : 0;

cifs_bp_rename_retry:
	namelen = dfsplen + pplen;
	seq = FUNC10(&rename_lock);
	FUNC8();
	for (temp = direntry; !FUNC2(temp);) {
		namelen += (1 + temp->d_name.len);
		temp = temp->d_parent;
		if (temp == NULL) {
			FUNC3(VFS, "corrupt dentry\n");
			FUNC9();
			return NULL;
		}
	}
	FUNC9();

	full_path = FUNC6(namelen+1, GFP_ATOMIC);
	if (full_path == NULL)
		return full_path;
	full_path[namelen] = 0;	/* trailing null */
	FUNC8();
	for (temp = direntry; !FUNC2(temp);) {
		FUNC12(&temp->d_lock);
		namelen -= 1 + temp->d_name.len;
		if (namelen < 0) {
			FUNC13(&temp->d_lock);
			break;
		} else {
			full_path[namelen] = dirsep;
			FUNC15(full_path + namelen + 1, temp->d_name.name,
				temp->d_name.len);
			FUNC3(FYI, "name: %s\n", full_path + namelen);
		}
		FUNC13(&temp->d_lock);
		temp = temp->d_parent;
		if (temp == NULL) {
			FUNC3(VFS, "corrupt dentry\n");
			FUNC9();
			FUNC5(full_path);
			return NULL;
		}
	}
	FUNC9();
	if (namelen != dfsplen + pplen || FUNC11(&rename_lock, seq)) {
		FUNC3(FYI, "did not end path lookup where expected. namelen=%ddfsplen=%d\n",
			 namelen, dfsplen);
		/* presumably this is only possible if racing with a rename
		of one of the parent directories  (we can not lock the dentries
		above us to prevent this, but retrying should be harmless) */
		FUNC5(full_path);
		goto cifs_bp_rename_retry;
	}
	/* DIR_SEP already set for byte  0 / vs \ but not for
	   subsequent slashes in prepath which currently must
	   be entered the right way - not sure if there is an alternative
	   since the '\' is a valid posix character so we can not switch
	   those safely to '/' if any are found in the middle of the prepath */
	/* BB test paths to Windows with '/' in the midst of prepath */

	if (pplen) {
		int i;

		FUNC3(FYI, "using cifs_sb prepath <%s>\n", cifs_sb->prepath);
		FUNC7(full_path+dfsplen+1, cifs_sb->prepath, pplen-1);
		full_path[dfsplen] = dirsep;
		for (i = 0; i < pplen-1; i++)
			if (full_path[dfsplen+1+i] == '/')
				full_path[dfsplen+1+i] = FUNC0(cifs_sb);
	}

	if (dfsplen) {
		FUNC15(full_path, tcon->treeName, dfsplen);
		if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIX_PATHS) {
			int i;
			for (i = 0; i < dfsplen; i++) {
				if (full_path[i] == '\\')
					full_path[i] = '/';
			}
		}
	}
	return full_path;
}