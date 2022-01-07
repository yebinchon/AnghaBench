
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int (* uni2char ) (int ,char*,int ) ;int charset; } ;
typedef int __u16 ;


 int NLS_MAX_CHARSET_SIZE ;
 int SFM_MAP_UNI_RSVD ;
 int SFU_MAP_UNI_RSVD ;
 int UTF16_LITTLE_ENDIAN ;
 scalar_t__ convert_sfm_char (int ,char*) ;
 scalar_t__ convert_sfu_char (int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int ,char*,int ) ;
 int utf16s_to_utf8s (int const*,int,int ,char*,int) ;

__attribute__((used)) static int
cifs_mapchar(char *target, const __u16 *from, const struct nls_table *cp,
      int maptype)
{
 int len = 1;
 __u16 src_char;

 src_char = *from;

 if ((maptype == SFM_MAP_UNI_RSVD) && convert_sfm_char(src_char, target))
  return len;
 else if ((maptype == SFU_MAP_UNI_RSVD) &&
    convert_sfu_char(src_char, target))
  return len;


 len = cp->uni2char(src_char, target, NLS_MAX_CHARSET_SIZE);
 if (len <= 0)
  goto surrogate_pair;

 return len;

surrogate_pair:

 if (strcmp(cp->charset, "utf8"))
  goto unknown;
 len = utf16s_to_utf8s(from, 3, UTF16_LITTLE_ENDIAN, target, 6);
 if (len <= 0)
  goto unknown;
 return len;

unknown:
 *target = '?';
 len = 1;
 return len;
}
