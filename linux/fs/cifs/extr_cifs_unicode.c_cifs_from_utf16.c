
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
typedef scalar_t__ __u16 ;
typedef int __le16 ;


 int NLS_MAX_CHARSET_SIZE ;
 int cifs_mapchar (char*,scalar_t__*,struct nls_table const*,int) ;
 scalar_t__ get_unaligned_le16 (int const*) ;
 int nls_nullsize (struct nls_table const*) ;

int
cifs_from_utf16(char *to, const __le16 *from, int tolen, int fromlen,
  const struct nls_table *codepage, int map_type)
{
 int i, charlen, safelen;
 int outlen = 0;
 int nullsize = nls_nullsize(codepage);
 int fromwords = fromlen / 2;
 char tmp[NLS_MAX_CHARSET_SIZE];
 __u16 ftmp[3];







 safelen = tolen - (NLS_MAX_CHARSET_SIZE + nullsize);

 for (i = 0; i < fromwords; i++) {
  ftmp[0] = get_unaligned_le16(&from[i]);
  if (ftmp[0] == 0)
   break;
  if (i + 1 < fromwords)
   ftmp[1] = get_unaligned_le16(&from[i + 1]);
  else
   ftmp[1] = 0;
  if (i + 2 < fromwords)
   ftmp[2] = get_unaligned_le16(&from[i + 2]);
  else
   ftmp[2] = 0;





  if (outlen >= safelen) {
   charlen = cifs_mapchar(tmp, ftmp, codepage, map_type);
   if ((outlen + charlen) > (tolen - nullsize))
    break;
  }


  charlen = cifs_mapchar(&to[outlen], ftmp, codepage, map_type);
  outlen += charlen;






  if (charlen == 4)
   i++;
  else if (charlen >= 5)

   i += 2;
 }


 for (i = 0; i < nullsize; i++)
  to[outlen++] = 0;

 return outlen;
}
