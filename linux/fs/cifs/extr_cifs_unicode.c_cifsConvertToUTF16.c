
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int unicode_t ;
struct nls_table {int (* char2uni ) (char const*,int,int*) ;int charset; } ;
typedef scalar_t__ __le16 ;


 int GFP_KERNEL ;
 int NO_MAP_UNI_RSVD ;
 int PATH_MAX ;
 int SFM_MAP_UNI_RSVD ;
 int SFU_MAP_UNI_RSVD ;
 int UTF16_LITTLE_ENDIAN ;
 int cifs_strtoUTF16 (scalar_t__*,char const*,int ,struct nls_table const*) ;
 scalar_t__ convert_to_sfm_char (char,int) ;
 scalar_t__ convert_to_sfu_char (char) ;
 scalar_t__ cpu_to_le16 (int) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int put_unaligned (scalar_t__,scalar_t__*) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (char const*,int,int*) ;
 int utf8_to_utf32 (char const*,int,int *) ;
 int utf8s_to_utf16s (char const*,int,int ,int*,int) ;

int
cifsConvertToUTF16(__le16 *target, const char *source, int srclen,
   const struct nls_table *cp, int map_chars)
{
 int i, charlen;
 int j = 0;
 char src_char;
 __le16 dst_char;
 wchar_t tmp;
 wchar_t *wchar_to;
 int ret;
 unicode_t u;

 if (map_chars == NO_MAP_UNI_RSVD)
  return cifs_strtoUTF16(target, source, PATH_MAX, cp);

 wchar_to = kzalloc(6, GFP_KERNEL);

 for (i = 0; i < srclen; j++) {
  src_char = source[i];
  charlen = 1;


  if (src_char == 0)
   goto ctoUTF16_out;


  if (map_chars == SFU_MAP_UNI_RSVD)
   dst_char = convert_to_sfu_char(src_char);
  else if (map_chars == SFM_MAP_UNI_RSVD) {
   bool end_of_string;

   if (i == srclen - 1)
    end_of_string = 1;
   else
    end_of_string = 0;

   dst_char = convert_to_sfm_char(src_char, end_of_string);
  } else
   dst_char = 0;





  if (dst_char == 0) {
   charlen = cp->char2uni(source + i, srclen - i, &tmp);
   dst_char = cpu_to_le16(tmp);





   if (charlen > 0)
    goto ctoUTF16;


   if (strcmp(cp->charset, "utf8") || !wchar_to)
    goto unknown;
   if (*(source + i) & 0x80) {
    charlen = utf8_to_utf32(source + i, 6, &u);
    if (charlen < 0)
     goto unknown;
   } else
    goto unknown;
   ret = utf8s_to_utf16s(source + i, charlen,
            UTF16_LITTLE_ENDIAN,
            wchar_to, 6);
   if (ret < 0)
    goto unknown;

   i += charlen;
   dst_char = cpu_to_le16(*wchar_to);
   if (charlen <= 3)

    put_unaligned(dst_char, &target[j]);
   else if (charlen == 4) {



    put_unaligned(dst_char, &target[j]);
    dst_char = cpu_to_le16(*(wchar_to + 1));
    j++;
    put_unaligned(dst_char, &target[j]);
   } else if (charlen >= 5) {

    put_unaligned(dst_char, &target[j]);
    dst_char = cpu_to_le16(*(wchar_to + 1));
    j++;
    put_unaligned(dst_char, &target[j]);
    dst_char = cpu_to_le16(*(wchar_to + 2));
    j++;
    put_unaligned(dst_char, &target[j]);
   }
   continue;

unknown:
   dst_char = cpu_to_le16(0x003f);
   charlen = 1;
  }

ctoUTF16:




  i += charlen;
  put_unaligned(dst_char, &target[j]);
 }

ctoUTF16_out:
 put_unaligned(0, &target[j]);
 kfree(wchar_to);
 return j;
}
