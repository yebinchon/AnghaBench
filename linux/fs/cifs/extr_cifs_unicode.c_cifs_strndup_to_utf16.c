
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
typedef int __le16 ;


 int GFP_KERNEL ;
 int cifsConvertToUTF16 (int *,char const*,int ,struct nls_table const*,int) ;
 int cifs_local_to_utf16_bytes (char const*,int const,struct nls_table const*) ;
 int * kmalloc (int,int ) ;
 int strlen (char const*) ;

__le16 *
cifs_strndup_to_utf16(const char *src, const int maxlen, int *utf16_len,
        const struct nls_table *cp, int remap)
{
 int len;
 __le16 *dst;

 len = cifs_local_to_utf16_bytes(src, maxlen, cp);
 len += 2;
 dst = kmalloc(len, GFP_KERNEL);
 if (!dst) {
  *utf16_len = 0;
  return ((void*)0);
 }
 cifsConvertToUTF16(dst, src, strlen(src), cp, remap);
 *utf16_len = len;
 return dst;
}
