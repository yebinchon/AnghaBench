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
struct CodaFid {int dummy; } ;
struct TYPE_8__ {struct CodaFid NewFid; struct CodaFid OldFid; } ;
struct TYPE_7__ {struct CodaFid CodaFid; } ;
struct TYPE_6__ {struct CodaFid CodaFid; } ;
struct TYPE_5__ {struct CodaFid CodaFid; } ;
union outputArgs {TYPE_4__ coda_replace; TYPE_3__ coda_purgefid; TYPE_2__ coda_zapfile; TYPE_1__ coda_zapdir; } ;
struct venus_comm {int /*<<< orphan*/  vc_mutex; struct super_block* vc_sb; } ;
struct super_block {int /*<<< orphan*/  s_root; } ;
struct inode {int dummy; } ;
struct coda_zapfile_out {int dummy; } ;
struct coda_zapdir_out {int dummy; } ;
struct coda_replace_out {int dummy; } ;
struct coda_purgeuser_out {int dummy; } ;
struct coda_purgefid_out {int dummy; } ;

/* Variables and functions */
#define  CODA_FLUSH 133 
#define  CODA_PURGEFID 132 
#define  CODA_PURGEUSER 131 
#define  CODA_REPLACE 130 
#define  CODA_ZAPDIR 129 
#define  CODA_ZAPFILE 128 
 int /*<<< orphan*/  C_FLUSH ; 
 int /*<<< orphan*/  C_PURGE ; 
 int /*<<< orphan*/  C_VATTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 struct inode* FUNC1 (struct CodaFid*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct CodaFid*,struct CodaFid*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*) ; 

int FUNC12(struct venus_comm *vcp, int opcode, union outputArgs *out,
		  size_t nbytes)
{
	struct inode *inode = NULL;
	struct CodaFid *fid = NULL, *newfid;
	struct super_block *sb;

	/*
	 * Make sure we have received enough data from the cache
	 * manager to populate the necessary fields in the buffer
	 */
	switch (opcode) {
	case CODA_PURGEUSER:
		if (nbytes < sizeof(struct coda_purgeuser_out))
			return -EINVAL;
		break;

	case CODA_ZAPDIR:
		if (nbytes < sizeof(struct coda_zapdir_out))
			return -EINVAL;
		break;

	case CODA_ZAPFILE:
		if (nbytes < sizeof(struct coda_zapfile_out))
			return -EINVAL;
		break;

	case CODA_PURGEFID:
		if (nbytes < sizeof(struct coda_purgefid_out))
			return -EINVAL;
		break;

	case CODA_REPLACE:
		if (nbytes < sizeof(struct coda_replace_out))
			return -EINVAL;
		break;
	}

	/* Handle invalidation requests. */
	FUNC9(&vcp->vc_mutex);
	sb = vcp->vc_sb;
	if (!sb || !sb->s_root)
		goto unlock_out;

	switch (opcode) {
	case CODA_FLUSH:
		FUNC0(sb);
		FUNC11(sb);
		if (FUNC7(sb->s_root))
			FUNC2(FUNC5(sb->s_root), C_FLUSH);
		break;

	case CODA_PURGEUSER:
		FUNC0(sb);
		break;

	case CODA_ZAPDIR:
		fid = &out->coda_zapdir.CodaFid;
		break;

	case CODA_ZAPFILE:
		fid = &out->coda_zapfile.CodaFid;
		break;

	case CODA_PURGEFID:
		fid = &out->coda_purgefid.CodaFid;
		break;

	case CODA_REPLACE:
		fid = &out->coda_replace.OldFid;
		break;
	}
	if (fid)
		inode = FUNC1(fid, sb);

unlock_out:
	FUNC10(&vcp->vc_mutex);

	if (!inode)
		return 0;

	switch (opcode) {
	case CODA_ZAPDIR:
		FUNC3(inode, C_PURGE);
		FUNC2(inode, C_VATTR);
		break;

	case CODA_ZAPFILE:
		FUNC2(inode, C_VATTR);
		break;

	case CODA_PURGEFID:
		FUNC3(inode, C_PURGE);

		/* catch the dentries later if some are still busy */
		FUNC2(inode, C_PURGE);
		FUNC6(inode);
		break;

	case CODA_REPLACE:
		newfid = &out->coda_replace.NewFid;
		FUNC4(inode, fid, newfid);
		break;
	}
	FUNC8(inode);
	return 0;
}