
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntlmssp2_name {void* length; void* type; } ;
struct nls_table {int dummy; } ;
struct TYPE_2__ {unsigned int len; unsigned char* response; } ;
struct cifs_ses {int domainName; TYPE_1__ auth_key; } ;
typedef int __le16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NTLMSSP_AV_NB_DOMAIN_NAME ;
 int cifs_strtoUTF16 (int *,int ,unsigned int,struct nls_table const*) ;
 void* cpu_to_le16 (int) ;
 int kstrdup (char*,int ) ;
 unsigned char* kzalloc (unsigned int,int ) ;
 unsigned int strlen (int ) ;

__attribute__((used)) static int
build_avpair_blob(struct cifs_ses *ses, const struct nls_table *nls_cp)
{
 unsigned int dlen;
 unsigned int size = 2 * sizeof(struct ntlmssp2_name);
 char *defdmname = "WORKGROUP";
 unsigned char *blobptr;
 struct ntlmssp2_name *attrptr;

 if (!ses->domainName) {
  ses->domainName = kstrdup(defdmname, GFP_KERNEL);
  if (!ses->domainName)
   return -ENOMEM;
 }

 dlen = strlen(ses->domainName);







 ses->auth_key.len = size + 2 * dlen;
 ses->auth_key.response = kzalloc(ses->auth_key.len, GFP_KERNEL);
 if (!ses->auth_key.response) {
  ses->auth_key.len = 0;
  return -ENOMEM;
 }

 blobptr = ses->auth_key.response;
 attrptr = (struct ntlmssp2_name *) blobptr;





 attrptr->type = cpu_to_le16(NTLMSSP_AV_NB_DOMAIN_NAME);
 attrptr->length = cpu_to_le16(2 * dlen);
 blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
 cifs_strtoUTF16((__le16 *)blobptr, ses->domainName, dlen, nls_cp);

 return 0;
}
