
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __le16 ;


 int FYI ;
 int PATH_MAX ;
 int cifs_dbg (int ,char*) ;

__attribute__((used)) static int cifs_unicode_bytelen(const char *str)
{
 int len;
 const __le16 *ustr = (const __le16 *)str;

 for (len = 0; len <= PATH_MAX; len++) {
  if (ustr[len] == 0)
   return len << 1;
 }
 cifs_dbg(FYI, "Unicode string longer than PATH_MAX found\n");
 return len << 1;
}
