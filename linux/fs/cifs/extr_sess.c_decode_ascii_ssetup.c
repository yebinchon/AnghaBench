
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
struct cifs_ses {scalar_t__* serverNOS; scalar_t__* serverOS; } ;
typedef int __u16 ;


 int FYI ;
 int GFP_KERNEL ;
 int cifs_dbg (int ,char*,...) ;
 int kfree (scalar_t__*) ;
 void* kmalloc (int,int ) ;
 int memcpy (scalar_t__*,char*,int) ;
 scalar_t__ strncmp (scalar_t__*,char*,int) ;
 int strnlen (char*,int) ;

__attribute__((used)) static void decode_ascii_ssetup(char **pbcc_area, __u16 bleft,
    struct cifs_ses *ses,
    const struct nls_table *nls_cp)
{
 int len;
 char *bcc_ptr = *pbcc_area;

 cifs_dbg(FYI, "decode sessetup ascii. bleft %d\n", bleft);

 len = strnlen(bcc_ptr, bleft);
 if (len >= bleft)
  return;

 kfree(ses->serverOS);

 ses->serverOS = kmalloc(len + 1, GFP_KERNEL);
 if (ses->serverOS) {
  memcpy(ses->serverOS, bcc_ptr, len);
  ses->serverOS[len] = 0;
  if (strncmp(ses->serverOS, "OS/2", 4) == 0)
   cifs_dbg(FYI, "OS/2 server\n");
 }

 bcc_ptr += len + 1;
 bleft -= len + 1;

 len = strnlen(bcc_ptr, bleft);
 if (len >= bleft)
  return;

 kfree(ses->serverNOS);

 ses->serverNOS = kmalloc(len + 1, GFP_KERNEL);
 if (ses->serverNOS) {
  memcpy(ses->serverNOS, bcc_ptr, len);
  ses->serverNOS[len] = 0;
 }

 bcc_ptr += len + 1;
 bleft -= len + 1;

 len = strnlen(bcc_ptr, bleft);
 if (len > bleft)
  return;






 cifs_dbg(FYI, "ascii: bytes left %d\n", bleft);
}
