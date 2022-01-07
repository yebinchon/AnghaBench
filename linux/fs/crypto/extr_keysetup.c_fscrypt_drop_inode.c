
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_crypt_info; } ;
struct fscrypt_master_key {int mk_secret; } ;
struct fscrypt_info {TYPE_2__* ci_master_key; } ;
struct TYPE_3__ {struct fscrypt_master_key** data; } ;
struct TYPE_4__ {TYPE_1__ payload; } ;


 struct fscrypt_info* READ_ONCE (int ) ;
 int is_master_key_secret_present (int *) ;

int fscrypt_drop_inode(struct inode *inode)
{
 const struct fscrypt_info *ci = READ_ONCE(inode->i_crypt_info);
 const struct fscrypt_master_key *mk;







 if (!ci || !ci->ci_master_key)
  return 0;
 mk = ci->ci_master_key->payload.data[0];
 return !is_master_key_secret_present(&mk->mk_secret);
}
