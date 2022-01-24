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
struct tcon_link {int dummy; } ;
struct super_block {int dummy; } ;
struct smb_vol {int dummy; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {struct TCP_Server_Info* server; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_mnt_data {struct smb_vol* vol; } ;
struct TCP_Server_Info {int dummy; } ;

/* Variables and functions */
 struct cifs_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct tcon_link*) ; 
 struct tcon_link* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  cifs_tcp_ses_lock ; 
 int FUNC5 (struct super_block*,struct cifs_mnt_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct cifs_mnt_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct TCP_Server_Info*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC8 (struct cifs_ses*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC9 (struct cifs_tcon*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct cifs_tcon* FUNC12 (struct tcon_link*) ; 

int
FUNC13(struct super_block *sb, void *data)
{
	struct cifs_mnt_data *mnt_data = (struct cifs_mnt_data *)data;
	struct smb_vol *volume_info;
	struct cifs_sb_info *cifs_sb;
	struct TCP_Server_Info *tcp_srv;
	struct cifs_ses *ses;
	struct cifs_tcon *tcon;
	struct tcon_link *tlink;
	int rc = 0;

	FUNC10(&cifs_tcp_ses_lock);
	cifs_sb = FUNC0(sb);
	tlink = FUNC2(FUNC4(cifs_sb));
	if (FUNC1(tlink)) {
		FUNC11(&cifs_tcp_ses_lock);
		return rc;
	}
	tcon = FUNC12(tlink);
	ses = tcon->ses;
	tcp_srv = ses->server;

	volume_info = mnt_data->vol;

	if (!FUNC7(tcp_srv, volume_info) ||
	    !FUNC8(ses, volume_info) ||
	    !FUNC9(tcon, volume_info) ||
	    !FUNC6(sb, mnt_data)) {
		rc = 0;
		goto out;
	}

	rc = FUNC5(sb, mnt_data);
out:
	FUNC11(&cifs_tcp_ses_lock);
	FUNC3(tlink);
	return rc;
}