
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int nonce; } ;
struct TYPE_8__ {int nonce; union fscrypt_context* master_key_descriptor; int filenames_encryption_mode; int contents_encryption_mode; } ;
union fscrypt_context {int version; TYPE_4__ v2; TYPE_3__ v1; } ;
struct TYPE_10__ {struct fscrypt_master_key** data; } ;
struct key {TYPE_5__ payload; } ;
struct inode {int i_crypt_info; TYPE_2__* i_sb; } ;
struct fscrypt_mode {scalar_t__ ivsize; } ;
struct fscrypt_master_key {int mk_secret_sem; int mk_decrypted_inodes_lock; int mk_decrypted_inodes; int mk_refcount; } ;
struct fscrypt_info {int ci_master_key_link; int ci_master_key; struct fscrypt_mode* ci_mode; int ci_policy; int ci_nonce; struct inode* ci_inode; } ;
typedef int ctx ;
struct TYPE_7__ {TYPE_1__* s_cop; } ;
struct TYPE_6__ {int (* get_context ) (struct inode*,union fscrypt_context*,int) ;int flags; } ;


 int EINVAL ;
 int ENOKEY ;
 int ENOMEM ;


 int FSCRYPT_KEY_DESCRIPTOR_SIZE ;
 scalar_t__ FSCRYPT_MAX_IV_SIZE ;
 int FSCRYPT_MODE_AES_256_CTS ;
 int FSCRYPT_MODE_AES_256_XTS ;
 int FS_KEY_DERIVATION_NONCE_SIZE ;
 int GFP_NOFS ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ IS_ERR (struct fscrypt_mode*) ;
 int PTR_ERR (struct fscrypt_mode*) ;
 int WARN_ON (int) ;
 int * cmpxchg_release (int *,int *,struct fscrypt_info*) ;
 int fscrypt_dummy_context_enabled (struct inode*) ;
 scalar_t__ fscrypt_has_encryption_key (struct inode*) ;
 int fscrypt_info_cachep ;
 int fscrypt_initialize (int ) ;
 int fscrypt_policy_from_context (int *,union fscrypt_context*,int) ;
 int fscrypt_supported_policy (int *,struct inode*) ;
 int fscrypt_warn (struct inode*,char*,...) ;
 int key_get (struct key*) ;
 int key_put (struct key*) ;
 struct fscrypt_info* kmem_cache_zalloc (int ,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (union fscrypt_context*,int,int) ;
 int put_crypt_info (struct fscrypt_info*) ;
 int refcount_inc (int *) ;
 struct fscrypt_mode* select_encryption_mode (int *,struct inode*) ;
 int setup_file_encryption_key (struct fscrypt_info*,struct key**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*,union fscrypt_context*,int) ;
 int up_read (int *) ;

int fscrypt_get_encryption_info(struct inode *inode)
{
 struct fscrypt_info *crypt_info;
 union fscrypt_context ctx;
 struct fscrypt_mode *mode;
 struct key *master_key = ((void*)0);
 int res;

 if (fscrypt_has_encryption_key(inode))
  return 0;

 res = fscrypt_initialize(inode->i_sb->s_cop->flags);
 if (res)
  return res;

 res = inode->i_sb->s_cop->get_context(inode, &ctx, sizeof(ctx));
 if (res < 0) {
  if (!fscrypt_dummy_context_enabled(inode) ||
      IS_ENCRYPTED(inode)) {
   fscrypt_warn(inode,
         "Error %d getting encryption context",
         res);
   return res;
  }

  memset(&ctx, 0, sizeof(ctx));
  ctx.version = 129;
  ctx.v1.contents_encryption_mode = FSCRYPT_MODE_AES_256_XTS;
  ctx.v1.filenames_encryption_mode = FSCRYPT_MODE_AES_256_CTS;
  memset(ctx.v1.master_key_descriptor, 0x42,
         FSCRYPT_KEY_DESCRIPTOR_SIZE);
  res = sizeof(ctx.v1);
 }

 crypt_info = kmem_cache_zalloc(fscrypt_info_cachep, GFP_NOFS);
 if (!crypt_info)
  return -ENOMEM;

 crypt_info->ci_inode = inode;

 res = fscrypt_policy_from_context(&crypt_info->ci_policy, &ctx, res);
 if (res) {
  fscrypt_warn(inode,
        "Unrecognized or corrupt encryption context");
  goto out;
 }

 switch (ctx.version) {
 case 129:
  memcpy(crypt_info->ci_nonce, ctx.v1.nonce,
         FS_KEY_DERIVATION_NONCE_SIZE);
  break;
 case 128:
  memcpy(crypt_info->ci_nonce, ctx.v2.nonce,
         FS_KEY_DERIVATION_NONCE_SIZE);
  break;
 default:
  WARN_ON(1);
  res = -EINVAL;
  goto out;
 }

 if (!fscrypt_supported_policy(&crypt_info->ci_policy, inode)) {
  res = -EINVAL;
  goto out;
 }

 mode = select_encryption_mode(&crypt_info->ci_policy, inode);
 if (IS_ERR(mode)) {
  res = PTR_ERR(mode);
  goto out;
 }
 WARN_ON(mode->ivsize > FSCRYPT_MAX_IV_SIZE);
 crypt_info->ci_mode = mode;

 res = setup_file_encryption_key(crypt_info, &master_key);
 if (res)
  goto out;

 if (cmpxchg_release(&inode->i_crypt_info, ((void*)0), crypt_info) == ((void*)0)) {
  if (master_key) {
   struct fscrypt_master_key *mk =
    master_key->payload.data[0];

   refcount_inc(&mk->mk_refcount);
   crypt_info->ci_master_key = key_get(master_key);
   spin_lock(&mk->mk_decrypted_inodes_lock);
   list_add(&crypt_info->ci_master_key_link,
     &mk->mk_decrypted_inodes);
   spin_unlock(&mk->mk_decrypted_inodes_lock);
  }
  crypt_info = ((void*)0);
 }
 res = 0;
out:
 if (master_key) {
  struct fscrypt_master_key *mk = master_key->payload.data[0];

  up_read(&mk->mk_secret_sem);
  key_put(master_key);
 }
 if (res == -ENOKEY)
  res = 0;
 put_crypt_info(crypt_info);
 return res;
}
