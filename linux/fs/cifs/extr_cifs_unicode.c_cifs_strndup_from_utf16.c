
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
typedef int __le16 ;


 int GFP_KERNEL ;
 int NO_MAP_UNI_RSVD ;
 int cifs_from_utf16 (char*,int *,int,int const,struct nls_table const*,int ) ;
 int cifs_utf16_bytes (int *,int const,struct nls_table const*) ;
 char* kmalloc (int,int ) ;
 scalar_t__ nls_nullsize (struct nls_table const*) ;
 int strlcpy (char*,char const*,int) ;
 int strnlen (char const*,int const) ;

char *
cifs_strndup_from_utf16(const char *src, const int maxlen,
   const bool is_unicode, const struct nls_table *codepage)
{
 int len;
 char *dst;

 if (is_unicode) {
  len = cifs_utf16_bytes((__le16 *) src, maxlen, codepage);
  len += nls_nullsize(codepage);
  dst = kmalloc(len, GFP_KERNEL);
  if (!dst)
   return ((void*)0);
  cifs_from_utf16(dst, (__le16 *) src, len, maxlen, codepage,
          NO_MAP_UNI_RSVD);
 } else {
  len = strnlen(src, maxlen);
  len++;
  dst = kmalloc(len, GFP_KERNEL);
  if (!dst)
   return ((void*)0);
  strlcpy(dst, src, len);
 }

 return dst;
}
