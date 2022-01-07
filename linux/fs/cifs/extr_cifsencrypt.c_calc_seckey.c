
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int response; } ;
struct cifs_ses {TYPE_1__ auth_key; TYPE_2__* ntlmssp; } ;
struct arc4_ctx {int dummy; } ;
struct TYPE_4__ {int ciphertext; } ;


 int CIFS_CPHTXT_SIZE ;
 int CIFS_SESS_KEY_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VFS ;
 int arc4_crypt (struct arc4_ctx*,int ,unsigned char*,int ) ;
 int arc4_setkey (struct arc4_ctx*,int ,int) ;
 int cifs_dbg (int ,char*) ;
 scalar_t__ fips_enabled ;
 int get_random_bytes (unsigned char*,int) ;
 struct arc4_ctx* kmalloc (int,int ) ;
 int kzfree (struct arc4_ctx*) ;
 int memcpy (int ,unsigned char*,int) ;
 int memzero_explicit (unsigned char*,int) ;

int
calc_seckey(struct cifs_ses *ses)
{
 unsigned char sec_key[CIFS_SESS_KEY_SIZE];
 struct arc4_ctx *ctx_arc4;

 if (fips_enabled)
  return -ENODEV;

 get_random_bytes(sec_key, CIFS_SESS_KEY_SIZE);

 ctx_arc4 = kmalloc(sizeof(*ctx_arc4), GFP_KERNEL);
 if (!ctx_arc4) {
  cifs_dbg(VFS, "could not allocate arc4 context\n");
  return -ENOMEM;
 }

 arc4_setkey(ctx_arc4, ses->auth_key.response, CIFS_SESS_KEY_SIZE);
 arc4_crypt(ctx_arc4, ses->ntlmssp->ciphertext, sec_key,
     CIFS_CPHTXT_SIZE);


 memcpy(ses->auth_key.response, sec_key, CIFS_SESS_KEY_SIZE);

 ses->auth_key.len = CIFS_SESS_KEY_SIZE;

 memzero_explicit(sec_key, CIFS_SESS_KEY_SIZE);
 kzfree(ctx_arc4);
 return 0;
}
