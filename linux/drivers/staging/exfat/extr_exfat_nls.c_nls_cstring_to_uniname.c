
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
typedef int u16 ;
struct uni_name_t {int* name; int name_len; int name_hash; } ;
struct super_block {int dummy; } ;
struct nls_table {int dummy; } ;
struct TYPE_2__ {struct nls_table* nls_io; } ;


 int CS_DEFAULT ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int MAX_NAME_LENGTH ;
 int SET16_A (char*,int ) ;
 int UTF16_HOST_ENDIAN ;
 int bad_uni_chars ;
 int calc_checksum_2byte (char*,int,int ,int ) ;
 scalar_t__ convert_ch_to_uni (struct nls_table*,int*,char*,int*) ;
 int nls_upper (struct super_block*,int) ;
 scalar_t__ nls_wstrchr (int ,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int utf8s_to_utf16s (char*,int,int ,int*,int) ;

void nls_cstring_to_uniname(struct super_block *sb,
       struct uni_name_t *p_uniname, u8 *p_cstring,
       bool *p_lossy)
{
 int i, j;
 bool lossy = 0;
 u8 *end_of_name;
 u8 upname[MAX_NAME_LENGTH * 2];
 u16 *uniname = p_uniname->name;
 struct nls_table *nls = EXFAT_SB(sb)->nls_io;


 end_of_name = p_cstring + strlen(p_cstring);

 while (*(--end_of_name) == ' ') {
  if (end_of_name < p_cstring)
   break;
 }
 *(++end_of_name) = '\0';

 if (strcmp(p_cstring, ".") && strcmp(p_cstring, "..")) {

  while (*(--end_of_name) == '.') {
   if (end_of_name < p_cstring)
    break;
  }
  *(++end_of_name) = '\0';
 }

 if (*p_cstring == '\0')
  lossy = 1;

 if (!nls) {
  i = utf8s_to_utf16s(p_cstring, MAX_NAME_LENGTH,
        UTF16_HOST_ENDIAN, uniname,
        MAX_NAME_LENGTH);
  for (j = 0; j < i; j++)
   SET16_A(upname + j * 2, nls_upper(sb, uniname[j]));
  uniname[i] = '\0';
 } else {
  i = 0;
  j = 0;
  while (j < (MAX_NAME_LENGTH - 1)) {
   if (*(p_cstring + i) == '\0')
    break;

   i += convert_ch_to_uni(nls, uniname,
            (u8 *)(p_cstring + i), &lossy);

   if ((*uniname < 0x0020) ||
       nls_wstrchr(bad_uni_chars, *uniname))
    lossy = 1;

   SET16_A(upname + j * 2, nls_upper(sb, *uniname));

   uniname++;
   j++;
  }

  if (*(p_cstring + i) != '\0')
   lossy = 1;
  *uniname = (u16)'\0';
 }

 p_uniname->name_len = j;
 p_uniname->name_hash = calc_checksum_2byte(upname, j << 1, 0,
         CS_DEFAULT);

 if (p_lossy)
  *p_lossy = lossy;
}
