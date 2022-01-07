
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shash_desc {int dummy; } ;
struct TYPE_2__ {struct crypto_shash* tfm; } ;
struct sdesc {TYPE_1__ shash; } ;
struct crypto_shash {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 int VFS ;
 int cifs_dbg (int ,char*,char const*) ;
 struct crypto_shash* crypto_alloc_shash (char const*,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 int crypto_shash_descsize (struct crypto_shash*) ;
 struct sdesc* kmalloc (size_t,int ) ;

int
cifs_alloc_hash(const char *name,
  struct crypto_shash **shash, struct sdesc **sdesc)
{
 int rc = 0;
 size_t size;

 if (*sdesc != ((void*)0))
  return 0;

 *shash = crypto_alloc_shash(name, 0, 0);
 if (IS_ERR(*shash)) {
  cifs_dbg(VFS, "could not allocate crypto %s\n", name);
  rc = PTR_ERR(*shash);
  *shash = ((void*)0);
  *sdesc = ((void*)0);
  return rc;
 }

 size = sizeof(struct shash_desc) + crypto_shash_descsize(*shash);
 *sdesc = kmalloc(size, GFP_KERNEL);
 if (*sdesc == ((void*)0)) {
  cifs_dbg(VFS, "no memory left to allocate crypto %s\n", name);
  crypto_free_shash(*shash);
  *shash = ((void*)0);
  return -ENOMEM;
 }

 (*sdesc)->shash.tfm = *shash;
 return 0;
}
