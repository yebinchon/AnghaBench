
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {struct fscrypt_master_key** data; } ;
struct key {TYPE_4__ payload; } ;
struct TYPE_16__ {int raw; int size; } ;
struct fscrypt_master_key {int mk_secret_sem; TYPE_8__ mk_secret; } ;
struct TYPE_13__ {int identifier; int descriptor; } ;
struct fscrypt_key_specifier {TYPE_5__ u; int type; } ;
struct TYPE_10__ {int master_key_identifier; } ;
struct TYPE_9__ {int master_key_descriptor; } ;
struct TYPE_15__ {int version; TYPE_2__ v2; TYPE_1__ v1; } ;
struct fscrypt_info {TYPE_7__ ci_policy; TYPE_6__* ci_mode; TYPE_3__* ci_inode; } ;
struct TYPE_14__ {int keysize; } ;
struct TYPE_11__ {int i_sb; } ;


 int EINVAL ;
 int ENOKEY ;
 struct key* ERR_PTR (int) ;
 int FSCRYPT_KEY_DESCRIPTOR_SIZE ;
 int FSCRYPT_KEY_IDENTIFIER_SIZE ;
 int FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR ;
 int FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER ;


 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int WARN_ON (int) ;
 int down_read (int *) ;
 struct key* fscrypt_find_master_key (int ,struct fscrypt_key_specifier*) ;
 int fscrypt_setup_v1_file_key (struct fscrypt_info*,int ) ;
 int fscrypt_setup_v1_file_key_via_subscribed_keyrings (struct fscrypt_info*) ;
 int fscrypt_setup_v2_file_key (struct fscrypt_info*,struct fscrypt_master_key*) ;
 int fscrypt_warn (int *,char*,int ,int ,int *,int ,int ) ;
 int is_master_key_secret_present (TYPE_8__*) ;
 int key_put (struct key*) ;
 int master_key_spec_len (struct fscrypt_key_specifier*) ;
 int master_key_spec_type (struct fscrypt_key_specifier*) ;
 int memcpy (int ,int ,int ) ;
 int up_read (int *) ;

__attribute__((used)) static int setup_file_encryption_key(struct fscrypt_info *ci,
         struct key **master_key_ret)
{
 struct key *key;
 struct fscrypt_master_key *mk = ((void*)0);
 struct fscrypt_key_specifier mk_spec;
 int err;

 switch (ci->ci_policy.version) {
 case 129:
  mk_spec.type = FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR;
  memcpy(mk_spec.u.descriptor,
         ci->ci_policy.v1.master_key_descriptor,
         FSCRYPT_KEY_DESCRIPTOR_SIZE);
  break;
 case 128:
  mk_spec.type = FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER;
  memcpy(mk_spec.u.identifier,
         ci->ci_policy.v2.master_key_identifier,
         FSCRYPT_KEY_IDENTIFIER_SIZE);
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 key = fscrypt_find_master_key(ci->ci_inode->i_sb, &mk_spec);
 if (IS_ERR(key)) {
  if (key != ERR_PTR(-ENOKEY) ||
      ci->ci_policy.version != 129)
   return PTR_ERR(key);







  return fscrypt_setup_v1_file_key_via_subscribed_keyrings(ci);
 }

 mk = key->payload.data[0];
 down_read(&mk->mk_secret_sem);


 if (!is_master_key_secret_present(&mk->mk_secret)) {
  err = -ENOKEY;
  goto out_release_key;
 }







 if (mk->mk_secret.size < ci->ci_mode->keysize) {
  fscrypt_warn(((void*)0),
        "key with %s %*phN is too short (got %u bytes, need %u+ bytes)",
        master_key_spec_type(&mk_spec),
        master_key_spec_len(&mk_spec), (u8 *)&mk_spec.u,
        mk->mk_secret.size, ci->ci_mode->keysize);
  err = -ENOKEY;
  goto out_release_key;
 }

 switch (ci->ci_policy.version) {
 case 129:
  err = fscrypt_setup_v1_file_key(ci, mk->mk_secret.raw);
  break;
 case 128:
  err = fscrypt_setup_v2_file_key(ci, mk);
  break;
 default:
  WARN_ON(1);
  err = -EINVAL;
  break;
 }
 if (err)
  goto out_release_key;

 *master_key_ret = key;
 return 0;

out_release_key:
 up_read(&mk->mk_secret_sem);
 key_put(key);
 return err;
}
