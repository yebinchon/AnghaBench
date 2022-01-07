
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct nls_table {int dummy; } ;
struct cifs_ses {int serverOS; int serverNOS; int serverDomain; } ;


 int FYI ;
 int UniStrnlen (int *,int) ;
 int cifs_dbg (int ,char*,int) ;
 void* cifs_strndup_from_utf16 (char*,int,int,struct nls_table const*) ;
 int kfree (int) ;

__attribute__((used)) static void
decode_unicode_ssetup(char **pbcc_area, int bleft, struct cifs_ses *ses,
        const struct nls_table *nls_cp)
{
 int len;
 char *data = *pbcc_area;

 cifs_dbg(FYI, "bleft %d\n", bleft);

 kfree(ses->serverOS);
 ses->serverOS = cifs_strndup_from_utf16(data, bleft, 1, nls_cp);
 cifs_dbg(FYI, "serverOS=%s\n", ses->serverOS);
 len = (UniStrnlen((wchar_t *) data, bleft / 2) * 2) + 2;
 data += len;
 bleft -= len;
 if (bleft <= 0)
  return;

 kfree(ses->serverNOS);
 ses->serverNOS = cifs_strndup_from_utf16(data, bleft, 1, nls_cp);
 cifs_dbg(FYI, "serverNOS=%s\n", ses->serverNOS);
 len = (UniStrnlen((wchar_t *) data, bleft / 2) * 2) + 2;
 data += len;
 bleft -= len;
 if (bleft <= 0)
  return;

 kfree(ses->serverDomain);
 ses->serverDomain = cifs_strndup_from_utf16(data, bleft, 1, nls_cp);
 cifs_dbg(FYI, "serverDomain=%s\n", ses->serverDomain);

 return;
}
