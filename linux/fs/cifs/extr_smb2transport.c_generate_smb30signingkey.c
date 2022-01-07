
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* iov_base; int iov_len; } ;
struct TYPE_3__ {char* iov_base; int iov_len; } ;
struct derivation {TYPE_2__ context; TYPE_1__ label; } ;
struct derivation_triplet {struct derivation decryption; struct derivation encryption; struct derivation signing; } ;
struct cifs_ses {int dummy; } ;


 int generate_smb3signingkey (struct cifs_ses*,struct derivation_triplet*) ;

int
generate_smb30signingkey(struct cifs_ses *ses)

{
 struct derivation_triplet triplet;
 struct derivation *d;

 d = &triplet.signing;
 d->label.iov_base = "SMB2AESCMAC";
 d->label.iov_len = 12;
 d->context.iov_base = "SmbSign";
 d->context.iov_len = 8;

 d = &triplet.encryption;
 d->label.iov_base = "SMB2AESCCM";
 d->label.iov_len = 11;
 d->context.iov_base = "ServerIn ";
 d->context.iov_len = 10;

 d = &triplet.decryption;
 d->label.iov_base = "SMB2AESCCM";
 d->label.iov_len = 11;
 d->context.iov_base = "ServerOut";
 d->context.iov_len = 10;

 return generate_smb3signingkey(ses, &triplet);
}
