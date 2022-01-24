#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct seq_file {int dummy; } ;
struct dentry {TYPE_5__* d_sb; } ;
struct cifs_tcon {int snapshot_time; int handle_timeout; TYPE_3__* ses; scalar_t__ unix_ext; scalar_t__ posix_extensions; scalar_t__ use_resilient; scalar_t__ use_persistent; scalar_t__ retry; scalar_t__ local_lease; scalar_t__ nocase; scalar_t__ seal; scalar_t__ no_lease; } ;
struct cifs_sb_info {int mnt_cifs_flags; int rsize; int wsize; int bsize; int actimeo; int /*<<< orphan*/  mnt_backupgid; int /*<<< orphan*/  mnt_backupuid; int /*<<< orphan*/  local_nls; int /*<<< orphan*/  mnt_dir_mode; int /*<<< orphan*/  mnt_file_mode; int /*<<< orphan*/  mnt_gid; int /*<<< orphan*/  mnt_uid; } ;
struct TYPE_10__ {int s_flags; } ;
struct TYPE_9__ {int min_offload; int echo_interval; int max_credits; TYPE_1__* vals; int /*<<< orphan*/  srcaddr; } ;
struct TYPE_8__ {scalar_t__* user_name; scalar_t__* domainName; TYPE_4__* server; } ;
struct TYPE_6__ {scalar_t__* version_string; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int CIFS_MOUNT_CIFS_ACL ; 
 int CIFS_MOUNT_CIFS_BACKUPGID ; 
 int CIFS_MOUNT_CIFS_BACKUPUID ; 
 int CIFS_MOUNT_DYNPERM ; 
 int CIFS_MOUNT_FSCACHE ; 
 int CIFS_MOUNT_MAP_SFM_CHR ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 int CIFS_MOUNT_MF_SYMLINKS ; 
 int CIFS_MOUNT_MODE_FROM_SID ; 
 int CIFS_MOUNT_MULTIUSER ; 
 int CIFS_MOUNT_NOPOSIXBRL ; 
 int CIFS_MOUNT_NOSSYNC ; 
 int CIFS_MOUNT_NO_BRL ; 
 int CIFS_MOUNT_NO_DFS ; 
 int CIFS_MOUNT_NO_HANDLE_CACHE ; 
 int CIFS_MOUNT_NO_PERM ; 
 int CIFS_MOUNT_NO_XATTR ; 
 int CIFS_MOUNT_OVERR_GID ; 
 int CIFS_MOUNT_OVERR_UID ; 
 int CIFS_MOUNT_POSIX_PATHS ; 
 int CIFS_MOUNT_RWPIDFORWARD ; 
 int CIFS_MOUNT_SERVER_INUM ; 
 int CIFS_MOUNT_SET_UID ; 
 int CIFS_MOUNT_UID_FROM_ACL ; 
 int CIFS_MOUNT_UNX_EMUL ; 
 struct cifs_sb_info* FUNC0 (TYPE_5__*) ; 
 int HZ ; 
 int SB_POSIXACL ; 
 int SMB2_MAX_CREDITS_AVAILABLE ; 
 struct cifs_tcon* FUNC1 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct seq_file*,char*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC11(struct seq_file *s, struct dentry *root)
{
	struct cifs_sb_info *cifs_sb = FUNC0(root->d_sb);
	struct cifs_tcon *tcon = FUNC1(cifs_sb);
	struct sockaddr *srcaddr;
	srcaddr = (struct sockaddr *)&tcon->ses->server->srcaddr;

	FUNC10(s, "vers", tcon->ses->server->vals->version_string);
	FUNC5(s, tcon->ses);
	FUNC3(s, cifs_sb);

	if (tcon->no_lease)
		FUNC9(s, ",nolease");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MULTIUSER)
		FUNC9(s, ",multiuser");
	else if (tcon->ses->user_name)
		FUNC10(s, "username", tcon->ses->user_name);

	if (tcon->ses->domainName && tcon->ses->domainName[0] != 0)
		FUNC10(s, "domain", tcon->ses->domainName);

	if (srcaddr->sa_family != AF_UNSPEC) {
		struct sockaddr_in *saddr4;
		struct sockaddr_in6 *saddr6;
		saddr4 = (struct sockaddr_in *)srcaddr;
		saddr6 = (struct sockaddr_in6 *)srcaddr;
		if (srcaddr->sa_family == AF_INET6)
			FUNC8(s, ",srcaddr=%pI6c",
				   saddr6->sin6_addr);
		else if (srcaddr->sa_family == AF_INET)
			FUNC8(s, ",srcaddr=%pI4",
				   saddr4->sin_addr.s_addr);
		else
			FUNC8(s, ",srcaddr=BAD-AF:%i",
				   (int)(srcaddr->sa_family));
	}

	FUNC8(s, ",uid=%u",
		   FUNC7(&init_user_ns, cifs_sb->mnt_uid));
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_UID)
		FUNC9(s, ",forceuid");
	else
		FUNC9(s, ",noforceuid");

	FUNC8(s, ",gid=%u",
		   FUNC6(&init_user_ns, cifs_sb->mnt_gid));
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_GID)
		FUNC9(s, ",forcegid");
	else
		FUNC9(s, ",noforcegid");

	FUNC2(s, tcon->ses->server);

	if (!tcon->unix_ext)
		FUNC8(s, ",file_mode=0%ho,dir_mode=0%ho",
					   cifs_sb->mnt_file_mode,
					   cifs_sb->mnt_dir_mode);

	FUNC4(s, cifs_sb->local_nls);

	if (tcon->seal)
		FUNC9(s, ",seal");
	if (tcon->nocase)
		FUNC9(s, ",nocase");
	if (tcon->local_lease)
		FUNC9(s, ",locallease");
	if (tcon->retry)
		FUNC9(s, ",hard");
	else
		FUNC9(s, ",soft");
	if (tcon->use_persistent)
		FUNC9(s, ",persistenthandles");
	else if (tcon->use_resilient)
		FUNC9(s, ",resilienthandles");
	if (tcon->posix_extensions)
		FUNC9(s, ",posix");
	else if (tcon->unix_ext)
		FUNC9(s, ",unix");
	else
		FUNC9(s, ",nounix");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NO_DFS)
		FUNC9(s, ",nodfs");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIX_PATHS)
		FUNC9(s, ",posixpaths");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SET_UID)
		FUNC9(s, ",setuids");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_UID_FROM_ACL)
		FUNC9(s, ",idsfromsid");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM)
		FUNC9(s, ",serverino");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_RWPIDFORWARD)
		FUNC9(s, ",rwpidforward");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOPOSIXBRL)
		FUNC9(s, ",forcemand");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NO_XATTR)
		FUNC9(s, ",nouser_xattr");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SPECIAL_CHR)
		FUNC9(s, ",mapchars");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SFM_CHR)
		FUNC9(s, ",mapposix");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_UNX_EMUL)
		FUNC9(s, ",sfu");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NO_BRL)
		FUNC9(s, ",nobrl");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NO_HANDLE_CACHE)
		FUNC9(s, ",nohandlecache");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MODE_FROM_SID)
		FUNC9(s, ",modefromsid");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_ACL)
		FUNC9(s, ",cifsacl");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_DYNPERM)
		FUNC9(s, ",dynperm");
	if (root->d_sb->s_flags & SB_POSIXACL)
		FUNC9(s, ",acl");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS)
		FUNC9(s, ",mfsymlinks");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_FSCACHE)
		FUNC9(s, ",fsc");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOSSYNC)
		FUNC9(s, ",nostrictsync");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NO_PERM)
		FUNC9(s, ",noperm");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_BACKUPUID)
		FUNC8(s, ",backupuid=%u",
			   FUNC7(&init_user_ns,
					    cifs_sb->mnt_backupuid));
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_BACKUPGID)
		FUNC8(s, ",backupgid=%u",
			   FUNC6(&init_user_ns,
					    cifs_sb->mnt_backupgid));

	FUNC8(s, ",rsize=%u", cifs_sb->rsize);
	FUNC8(s, ",wsize=%u", cifs_sb->wsize);
	FUNC8(s, ",bsize=%u", cifs_sb->bsize);
	if (tcon->ses->server->min_offload)
		FUNC8(s, ",esize=%u", tcon->ses->server->min_offload);
	FUNC8(s, ",echo_interval=%lu",
			tcon->ses->server->echo_interval / HZ);

	/* Only display max_credits if it was overridden on mount */
	if (tcon->ses->server->max_credits != SMB2_MAX_CREDITS_AVAILABLE)
		FUNC8(s, ",max_credits=%u", tcon->ses->server->max_credits);

	if (tcon->snapshot_time)
		FUNC8(s, ",snapshot=%llu", tcon->snapshot_time);
	if (tcon->handle_timeout)
		FUNC8(s, ",handletimeout=%u", tcon->handle_timeout);
	/* convert actimeo and display it in seconds */
	FUNC8(s, ",actimeo=%lu", cifs_sb->actimeo / HZ);

	return 0;
}