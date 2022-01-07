
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct des_ctx {int dummy; } ;
typedef int ctx ;


 int DES_KEY_SIZE ;
 int ENOENT ;
 int VFS ;
 int cifs_dbg (int ,char*) ;
 int des_encrypt (struct des_ctx*,unsigned char*,unsigned char const*) ;
 int des_expand_key (struct des_ctx*,unsigned char*,int ) ;
 scalar_t__ fips_enabled ;
 int memzero_explicit (struct des_ctx*,int) ;
 int str_to_key (unsigned char*,unsigned char*) ;

__attribute__((used)) static int
smbhash(unsigned char *out, const unsigned char *in, unsigned char *key)
{
 unsigned char key2[8];
 struct des_ctx ctx;

 str_to_key(key, key2);

 if (fips_enabled) {
  cifs_dbg(VFS, "FIPS compliance enabled: DES not permitted\n");
  return -ENOENT;
 }

 des_expand_key(&ctx, key2, DES_KEY_SIZE);
 des_encrypt(&ctx, out, in);
 memzero_explicit(&ctx, sizeof(ctx));

 return 0;
}
