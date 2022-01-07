
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
typedef scalar_t__ __u16 ;
typedef int __le16 ;


 int NLS_MAX_CHARSET_SIZE ;
 int NO_MAP_UNI_RSVD ;
 int cifs_mapchar (char*,scalar_t__*,struct nls_table const*,int ) ;
 scalar_t__ get_unaligned_le16 (int const*) ;

int
cifs_utf16_bytes(const __le16 *from, int maxbytes,
  const struct nls_table *codepage)
{
 int i;
 int charlen, outlen = 0;
 int maxwords = maxbytes / 2;
 char tmp[NLS_MAX_CHARSET_SIZE];
 __u16 ftmp[3];

 for (i = 0; i < maxwords; i++) {
  ftmp[0] = get_unaligned_le16(&from[i]);
  if (ftmp[0] == 0)
   break;
  if (i + 1 < maxwords)
   ftmp[1] = get_unaligned_le16(&from[i + 1]);
  else
   ftmp[1] = 0;
  if (i + 2 < maxwords)
   ftmp[2] = get_unaligned_le16(&from[i + 2]);
  else
   ftmp[2] = 0;

  charlen = cifs_mapchar(tmp, ftmp, codepage, NO_MAP_UNI_RSVD);
  outlen += charlen;
 }

 return outlen;
}
