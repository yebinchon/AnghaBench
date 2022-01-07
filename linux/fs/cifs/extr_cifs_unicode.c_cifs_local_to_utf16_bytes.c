
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct nls_table {int (* char2uni ) (char const*,int,int *) ;} ;


 int stub1 (char const*,int,int *) ;

__attribute__((used)) static int
cifs_local_to_utf16_bytes(const char *from, int len,
     const struct nls_table *codepage)
{
 int charlen;
 int i;
 wchar_t wchar_to;

 for (i = 0; len && *from; i++, from += charlen, len -= charlen) {
  charlen = codepage->char2uni(from, len, &wchar_to);

  if (charlen < 1)
   charlen = 1;
 }
 return 2 * i;
}
