
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int ssize_t ;


 int TCM_QLA2XXX_NAMELEN ;
 scalar_t__ isdigit (char) ;
 scalar_t__ islower (char) ;
 scalar_t__ isxdigit (char) ;
 int pr_debug (char*,int,int,int,int) ;
 char tolower (char) ;

__attribute__((used)) static ssize_t tcm_qla2xxx_parse_wwn(const char *name, u64 *wwn, int strict)
{
 const char *cp;
 char c;
 u32 nibble;
 u32 byte = 0;
 u32 pos = 0;
 u32 err;

 *wwn = 0;
 for (cp = name; cp < &name[TCM_QLA2XXX_NAMELEN - 1]; cp++) {
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
  if (isdigit(c))
   nibble = c - '0';
  else if (isxdigit(c) && (islower(c) || !strict))
   nibble = tolower(c) - 'a' + 10;
  else
   goto fail;
  *wwn = (*wwn << 4) | nibble;
 }
 err = 4;
fail:
 pr_debug("err %u len %zu pos %u byte %u\n",
   err, cp - name, pos, byte);
 return -1;
}
