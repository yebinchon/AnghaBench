
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int iov_len; int iov_base; } ;
struct TYPE_3__ {char* iov_base; int iov_len; } ;
struct derivation {TYPE_2__ context; TYPE_1__ label; } ;
struct derivation_triplet {struct derivation decryption; struct derivation encryption; struct derivation signing; } ;
struct cifs_ses {int preauth_sha_hash; } ;


 int generate_smb3signingkey (struct cifs_ses*,struct derivation_triplet*) ;

int
generate_smb311signingkey(struct cifs_ses *ses)

{
 struct derivation_triplet triplet;
 struct derivation *d;

 d = &triplet.signing;
 d->label.iov_base = "SMBSigningKey";
 d->label.iov_len = 14;
 d->context.iov_base = ses->preauth_sha_hash;
 d->context.iov_len = 64;

 d = &triplet.encryption;
 d->label.iov_base = "SMBC2SCipherKey";
 d->label.iov_len = 16;
 d->context.iov_base = ses->preauth_sha_hash;
 d->context.iov_len = 64;

 d = &triplet.decryption;
 d->label.iov_base = "SMBS2CCipherKey";
 d->label.iov_len = 16;
 d->context.iov_base = ses->preauth_sha_hash;
 d->context.iov_len = 64;

 return generate_smb3signingkey(ses, &triplet);
}
