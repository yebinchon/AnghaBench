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
struct file {struct cifsFileInfo* private_data; } ;
struct dir_context {scalar_t__ pos; } ;
struct cifs_tcon {TYPE_2__* ses; } ;
struct TYPE_7__ {char* ntwrk_buf_start; scalar_t__ index_of_last_entry; int /*<<< orphan*/  info_level; scalar_t__ emptyDir; scalar_t__ endOfSearch; } ;
struct cifsFileInfo {TYPE_3__ srch_inf; int /*<<< orphan*/  tlink; } ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_6__ {TYPE_4__* server; } ;
struct TYPE_5__ {unsigned int (* calc_smb_size ) (char*,TYPE_4__*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UNICODE_NAME_MAX ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (char*,struct file*,struct dir_context*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cifsFileInfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct dir_context*) ; 
 int FUNC4 (unsigned int,struct cifs_tcon*,scalar_t__,struct file*,char**,int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 unsigned int FUNC6 () ; 
 int FUNC7 (unsigned int,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (char*,TYPE_4__*) ; 
 struct cifs_tcon* FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct file *file, struct dir_context *ctx)
{
	int rc = 0;
	unsigned int xid;
	int i;
	struct cifs_tcon *tcon;
	struct cifsFileInfo *cifsFile = NULL;
	char *current_entry;
	int num_to_fill = 0;
	char *tmp_buf = NULL;
	char *end_of_smb;
	unsigned int max_len;

	xid = FUNC6();

	/*
	 * Ensure FindFirst doesn't fail before doing filldir() for '.' and
	 * '..'. Otherwise we won't be able to notify VFS in case of failure.
	 */
	if (file->private_data == NULL) {
		rc = FUNC7(xid, file);
		FUNC0(FYI, "initiate cifs search rc %d\n", rc);
		if (rc)
			goto rddir2_exit;
	}

	if (!FUNC3(file, ctx))
		goto rddir2_exit;

	/* 1) If search is active,
		is in current search buffer?
		if it before then restart search
		if after then keep searching till find it */

	cifsFile = file->private_data;
	if (cifsFile->srch_inf.endOfSearch) {
		if (cifsFile->srch_inf.emptyDir) {
			FUNC0(FYI, "End of search, empty dir\n");
			rc = 0;
			goto rddir2_exit;
		}
	} /* else {
		cifsFile->invalidHandle = true;
		tcon->ses->server->close(xid, tcon, &cifsFile->fid);
	} */

	tcon = FUNC12(cifsFile->tlink);
	rc = FUNC4(xid, tcon, ctx->pos, file, &current_entry,
			     &num_to_fill);
	if (rc) {
		FUNC0(FYI, "fce error %d\n", rc);
		goto rddir2_exit;
	} else if (current_entry != NULL) {
		FUNC0(FYI, "entry %lld found\n", ctx->pos);
	} else {
		FUNC0(FYI, "could not find entry\n");
		goto rddir2_exit;
	}
	FUNC0(FYI, "loop through %d times filling dir for net buf %p\n",
		 num_to_fill, cifsFile->srch_inf.ntwrk_buf_start);
	max_len = tcon->ses->server->ops->calc_smb_size(
			cifsFile->srch_inf.ntwrk_buf_start,
			tcon->ses->server);
	end_of_smb = cifsFile->srch_inf.ntwrk_buf_start + max_len;

	tmp_buf = FUNC9(UNICODE_NAME_MAX, GFP_KERNEL);
	if (tmp_buf == NULL) {
		rc = -ENOMEM;
		goto rddir2_exit;
	}

	for (i = 0; i < num_to_fill; i++) {
		if (current_entry == NULL) {
			/* evaluate whether this case is an error */
			FUNC0(VFS, "past SMB end,  num to fill %d i %d\n",
				 num_to_fill, i);
			break;
		}
		/*
		 * if buggy server returns . and .. late do we want to
		 * check for that here?
		 */
		*tmp_buf = 0;
		rc = FUNC1(current_entry, file, ctx,
				  tmp_buf, max_len);
		if (rc) {
			if (rc > 0)
				rc = 0;
			break;
		}

		ctx->pos++;
		if (ctx->pos ==
			cifsFile->srch_inf.index_of_last_entry) {
			FUNC0(FYI, "last entry in buf at pos %lld %s\n",
				 ctx->pos, tmp_buf);
			FUNC2(current_entry, cifsFile);
			break;
		} else
			current_entry =
				FUNC10(current_entry, end_of_smb,
					cifsFile->srch_inf.info_level);
	}
	FUNC8(tmp_buf);

rddir2_exit:
	FUNC5(xid);
	return rc;
}