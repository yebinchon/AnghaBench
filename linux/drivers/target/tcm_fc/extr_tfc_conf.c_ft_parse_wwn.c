
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int ssize_t ;


 int FT_NAMELEN ;
 int hex_to_bin (char) ;
 scalar_t__ isupper (char) ;
 int pr_debug (char*,int,int,int,int) ;

__attribute__((used)) static ssize_t ft_parse_wwn(const char *name, u64 *wwn, int strict)
{
 const char *cp;
 char c;
 u32 byte = 0;
 u32 pos = 0;
 u32 err;
 int val;

 *wwn = 0;
 for (cp = name; cp < &name[FT_NAMELEN - 1]; cp++) {
  c = *cp;
  if (c == '\n' && cp[1] == '\0')
   continue;
  if (strict && pos++ == 2 && byte++ < 7) {
   pos = 0;
   if (c == ':')
    continue;
   err = 1;
   goto fail;
  }
  if (c == '\0') {
   err = 2;
   if (strict && byte != 8)
    goto fail;
   return cp - name;
  }
  err = 3;
  val = hex_to_bin(c);
  if (val < 0 || (strict && isupper(c)))
   goto fail;
  *wwn = (*wwn << 4) | val;
 }
 err = 4;
fail:
 pr_debug("err %u len %zu pos %u byte %u\n",
      err, cp - name, pos, byte);
 return -1;
}
