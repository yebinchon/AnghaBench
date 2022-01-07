
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBCASC (char*,unsigned long) ;
 int memcpy (char*,char const*,unsigned long) ;

__attribute__((used)) static char *store_ebcdic(char *dest, const char *src, unsigned long len,
     char delim)
{
 memcpy(dest, src, len);
 EBCASC(dest, len);

 if (delim)
  dest[len++] = delim;

 return dest + len;
}
