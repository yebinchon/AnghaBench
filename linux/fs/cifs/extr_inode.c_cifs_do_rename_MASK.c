#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tcon_link {int dummy; } ;
struct TYPE_8__ {scalar_t__ name; } ;
struct dentry {scalar_t__ d_parent; TYPE_4__ d_name; int /*<<< orphan*/  d_sb; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_sb_info {int /*<<< orphan*/  local_nls; } ;
struct cifs_open_parms {char const* path; int reconnect; struct cifs_fid* fid; int /*<<< orphan*/  disposition; int /*<<< orphan*/  create_options; int /*<<< orphan*/  desired_access; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_fid {int /*<<< orphan*/  netfid; } ;
struct TCP_Server_Info {TYPE_3__* vals; TYPE_2__* ops; } ;
struct TYPE_7__ {scalar_t__ protocol_id; } ;
struct TYPE_6__ {int (* rename ) (unsigned int const,struct cifs_tcon*,char const*,char const*,struct cifs_sb_info*) ;} ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int const,struct cifs_open_parms*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CREATE_NOT_DIR ; 
 int /*<<< orphan*/  DELETE ; 
 int EBUSY ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 scalar_t__ FUNC4 (struct tcon_link*) ; 
 int FUNC5 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC7 (struct cifs_sb_info*) ; 
 struct tcon_link* FUNC8 (struct cifs_sb_info*) ; 
 int FUNC9 (unsigned int const,struct cifs_tcon*,char const*,char const*,struct cifs_sb_info*) ; 
 struct cifs_tcon* FUNC10 (struct tcon_link*) ; 

__attribute__((used)) static int
FUNC11(const unsigned int xid, struct dentry *from_dentry,
	       const char *from_path, struct dentry *to_dentry,
	       const char *to_path)
{
	struct cifs_sb_info *cifs_sb = FUNC2(from_dentry->d_sb);
	struct tcon_link *tlink;
	struct cifs_tcon *tcon;
	struct TCP_Server_Info *server;
	struct cifs_fid fid;
	struct cifs_open_parms oparms;
	int oplock, rc;

	tlink = FUNC8(cifs_sb);
	if (FUNC4(tlink))
		return FUNC5(tlink);
	tcon = FUNC10(tlink);
	server = tcon->ses->server;

	if (!server->ops->rename)
		return -ENOSYS;

	/* try path-based rename first */
	rc = server->ops->rename(xid, tcon, from_path, to_path, cifs_sb);

	/*
	 * Don't bother with rename by filehandle unless file is busy and
	 * source. Note that cross directory moves do not work with
	 * rename by filehandle to various Windows servers.
	 */
	if (rc == 0 || rc != -EBUSY)
		goto do_rename_exit;

	/* Don't fall back to using SMB on SMB 2+ mount */
	if (server->vals->protocol_id != 0)
		goto do_rename_exit;

	/* open-file renames don't work across directories */
	if (to_dentry->d_parent != from_dentry->d_parent)
		goto do_rename_exit;

	oparms.tcon = tcon;
	oparms.cifs_sb = cifs_sb;
	/* open the file to be renamed -- we need DELETE perms */
	oparms.desired_access = DELETE;
	oparms.create_options = CREATE_NOT_DIR;
	oparms.disposition = FILE_OPEN;
	oparms.path = from_path;
	oparms.fid = &fid;
	oparms.reconnect = false;

	rc = FUNC3(xid, &oparms, &oplock, NULL);
	if (rc == 0) {
		rc = FUNC1(xid, tcon, fid.netfid,
				(const char *) to_dentry->d_name.name,
				cifs_sb->local_nls, FUNC7(cifs_sb));
		FUNC0(xid, tcon, fid.netfid);
	}
do_rename_exit:
	FUNC6(tlink);
	return rc;
}