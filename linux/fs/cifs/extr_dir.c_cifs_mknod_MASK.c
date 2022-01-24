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
typedef  int /*<<< orphan*/  umode_t ;
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_6__ {TYPE_2__* server; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* make_node ) (unsigned int,struct inode*,struct dentry*,struct cifs_tcon*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct cifs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 scalar_t__ FUNC1 (struct tcon_link*) ; 
 int FUNC2 (struct tcon_link*) ; 
 char* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcon_link*) ; 
 struct tcon_link* FUNC5 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 unsigned int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (unsigned int,struct inode*,struct dentry*,struct cifs_tcon*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC11 (struct tcon_link*) ; 

int FUNC12(struct inode *inode, struct dentry *direntry, umode_t mode,
		dev_t device_number)
{
	int rc = -EPERM;
	unsigned int xid;
	struct cifs_sb_info *cifs_sb;
	struct tcon_link *tlink;
	struct cifs_tcon *tcon;
	char *full_path = NULL;

	if (!FUNC9(device_number))
		return -EINVAL;

	cifs_sb = FUNC0(inode->i_sb);
	tlink = FUNC5(cifs_sb);
	if (FUNC1(tlink))
		return FUNC2(tlink);

	tcon = FUNC11(tlink);

	xid = FUNC7();

	full_path = FUNC3(direntry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		goto mknod_out;
	}

	rc = tcon->ses->server->ops->make_node(xid, inode, direntry, tcon,
					       full_path, mode,
					       device_number);

mknod_out:
	FUNC8(full_path);
	FUNC6(xid);
	FUNC4(tlink);
	return rc;
}