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
struct TYPE_9__ {int /*<<< orphan*/  nonce; } ;
struct TYPE_8__ {int /*<<< orphan*/  nonce; union fscrypt_context* master_key_descriptor; int /*<<< orphan*/  filenames_encryption_mode; int /*<<< orphan*/  contents_encryption_mode; } ;
union fscrypt_context {int version; TYPE_4__ v2; TYPE_3__ v1; } ;
struct TYPE_10__ {struct fscrypt_master_key** data; } ;
struct key {TYPE_5__ payload; } ;
struct inode {int /*<<< orphan*/  i_crypt_info; TYPE_2__* i_sb; } ;
struct fscrypt_mode {scalar_t__ ivsize; } ;
struct fscrypt_master_key {int /*<<< orphan*/  mk_secret_sem; int /*<<< orphan*/  mk_decrypted_inodes_lock; int /*<<< orphan*/  mk_decrypted_inodes; int /*<<< orphan*/  mk_refcount; } ;
struct fscrypt_info {int /*<<< orphan*/  ci_master_key_link; int /*<<< orphan*/  ci_master_key; struct fscrypt_mode* ci_mode; int /*<<< orphan*/  ci_policy; int /*<<< orphan*/  ci_nonce; struct inode* ci_inode; } ;
typedef  int /*<<< orphan*/  ctx ;
struct TYPE_7__ {TYPE_1__* s_cop; } ;
struct TYPE_6__ {int (* get_context ) (struct inode*,union fscrypt_context*,int) ;int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOKEY ; 
 int ENOMEM ; 
#define  FSCRYPT_CONTEXT_V1 129 
#define  FSCRYPT_CONTEXT_V2 128 
 int FSCRYPT_KEY_DESCRIPTOR_SIZE ; 
 scalar_t__ FSCRYPT_MAX_IV_SIZE ; 
 int /*<<< orphan*/  FSCRYPT_MODE_AES_256_CTS ; 
 int /*<<< orphan*/  FSCRYPT_MODE_AES_256_XTS ; 
 int /*<<< orphan*/  FS_KEY_DERIVATION_NONCE_SIZE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct fscrypt_mode*) ; 
 int FUNC2 (struct fscrypt_mode*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct fscrypt_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  fscrypt_info_cachep ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,union fscrypt_context*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct key*) ; 
 int /*<<< orphan*/  FUNC12 (struct key*) ; 
 struct fscrypt_info* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (union fscrypt_context*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct fscrypt_info*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct fscrypt_mode* FUNC19 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC20 (struct fscrypt_info*,struct key**) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (struct inode*,union fscrypt_context*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

int FUNC25(struct inode *inode)
{
	struct fscrypt_info *crypt_info;
	union fscrypt_context ctx;
	struct fscrypt_mode *mode;
	struct key *master_key = NULL;
	int res;

	if (FUNC6(inode))
		return 0;

	res = FUNC7(inode->i_sb->s_cop->flags);
	if (res)
		return res;

	res = inode->i_sb->s_cop->get_context(inode, &ctx, sizeof(ctx));
	if (res < 0) {
		if (!FUNC5(inode) ||
		    FUNC0(inode)) {
			FUNC10(inode,
				     "Error %d getting encryption context",
				     res);
			return res;
		}
		/* Fake up a context for an unencrypted directory */
		FUNC16(&ctx, 0, sizeof(ctx));
		ctx.version = FSCRYPT_CONTEXT_V1;
		ctx.v1.contents_encryption_mode = FSCRYPT_MODE_AES_256_XTS;
		ctx.v1.filenames_encryption_mode = FSCRYPT_MODE_AES_256_CTS;
		FUNC16(ctx.v1.master_key_descriptor, 0x42,
		       FSCRYPT_KEY_DESCRIPTOR_SIZE);
		res = sizeof(ctx.v1);
	}

	crypt_info = FUNC13(fscrypt_info_cachep, GFP_NOFS);
	if (!crypt_info)
		return -ENOMEM;

	crypt_info->ci_inode = inode;

	res = FUNC8(&crypt_info->ci_policy, &ctx, res);
	if (res) {
		FUNC10(inode,
			     "Unrecognized or corrupt encryption context");
		goto out;
	}

	switch (ctx.version) {
	case FSCRYPT_CONTEXT_V1:
		FUNC15(crypt_info->ci_nonce, ctx.v1.nonce,
		       FS_KEY_DERIVATION_NONCE_SIZE);
		break;
	case FSCRYPT_CONTEXT_V2:
		FUNC15(crypt_info->ci_nonce, ctx.v2.nonce,
		       FS_KEY_DERIVATION_NONCE_SIZE);
		break;
	default:
		FUNC3(1);
		res = -EINVAL;
		goto out;
	}

	if (!FUNC9(&crypt_info->ci_policy, inode)) {
		res = -EINVAL;
		goto out;
	}

	mode = FUNC19(&crypt_info->ci_policy, inode);
	if (FUNC1(mode)) {
		res = FUNC2(mode);
		goto out;
	}
	FUNC3(mode->ivsize > FSCRYPT_MAX_IV_SIZE);
	crypt_info->ci_mode = mode;

	res = FUNC20(crypt_info, &master_key);
	if (res)
		goto out;

	if (FUNC4(&inode->i_crypt_info, NULL, crypt_info) == NULL) {
		if (master_key) {
			struct fscrypt_master_key *mk =
				master_key->payload.data[0];

			FUNC18(&mk->mk_refcount);
			crypt_info->ci_master_key = FUNC11(master_key);
			FUNC21(&mk->mk_decrypted_inodes_lock);
			FUNC14(&crypt_info->ci_master_key_link,
				 &mk->mk_decrypted_inodes);
			FUNC22(&mk->mk_decrypted_inodes_lock);
		}
		crypt_info = NULL;
	}
	res = 0;
out:
	if (master_key) {
		struct fscrypt_master_key *mk = master_key->payload.data[0];

		FUNC24(&mk->mk_secret_sem);
		FUNC12(master_key);
	}
	if (res == -ENOKEY)
		res = 0;
	FUNC17(crypt_info);
	return res;
}