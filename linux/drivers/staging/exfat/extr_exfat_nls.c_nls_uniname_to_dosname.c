
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
typedef scalar_t__ u16 ;
struct uni_name_t {scalar_t__* name; } ;
struct super_block {int dummy; } ;
struct nls_table {int dummy; } ;
struct dos_name_t {char* name; int name_case; } ;
struct TYPE_2__ {struct nls_table* nls_disk; } ;


 int DOS_NAME_LENGTH ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int MAX_CHARSET_SIZE ;
 scalar_t__ UNI_CUR_DIR_NAME ;
 scalar_t__ UNI_PAR_DIR_NAME ;
 int bad_dos_chars ;
 int convert_uni_to_ch (struct nls_table*,char*,scalar_t__,int*) ;
 int nls_uniname_cmp (struct super_block*,scalar_t__*,scalar_t__*) ;
 scalar_t__ nls_wstrchr (int ,scalar_t__) ;

void nls_uniname_to_dosname(struct super_block *sb,
       struct dos_name_t *p_dosname,
       struct uni_name_t *p_uniname, bool *p_lossy)
{
 int i, j, len;
 bool lossy = 0;
 u8 buf[MAX_CHARSET_SIZE];
 u8 lower = 0, upper = 0;
 u8 *dosname = p_dosname->name;
 u16 *uniname = p_uniname->name;
 u16 *p, *last_period;
 struct nls_table *nls = EXFAT_SB(sb)->nls_disk;

 for (i = 0; i < DOS_NAME_LENGTH; i++)
  *(dosname + i) = ' ';

 if (!nls_uniname_cmp(sb, uniname, (u16 *)UNI_CUR_DIR_NAME)) {
  *(dosname) = '.';
  p_dosname->name_case = 0x0;
  if (p_lossy)
   *p_lossy = 0;
  return;
 }

 if (!nls_uniname_cmp(sb, uniname, (u16 *)UNI_PAR_DIR_NAME)) {
  *(dosname) = '.';
  *(dosname + 1) = '.';
  p_dosname->name_case = 0x0;
  if (p_lossy)
   *p_lossy = 0;
  return;
 }


 last_period = ((void*)0);
 for (p = uniname; *p; p++) {
  if (*p == (u16)'.')
   last_period = p;
 }

 i = 0;
 while (i < DOS_NAME_LENGTH) {
  if (i == 8) {
   if (!last_period)
    break;

   if (uniname <= last_period) {
    if (uniname < last_period)
     lossy = 1;
    uniname = last_period + 1;
   }
  }

  if (*uniname == (u16)'\0') {
   break;
  } else if (*uniname == (u16)' ') {
   lossy = 1;
  } else if (*uniname == (u16)'.') {
   if (uniname < last_period)
    lossy = 1;
   else
    i = 8;
  } else if (nls_wstrchr(bad_dos_chars, *uniname)) {
   lossy = 1;
   *(dosname + i) = '_';
   i++;
  } else {
   len = convert_uni_to_ch(nls, buf, *uniname, &lossy);

   if (len > 1) {
    if ((i >= 8) && ((i + len) > DOS_NAME_LENGTH))
     break;

    if ((i < 8) && ((i + len) > 8)) {
     i = 8;
     continue;
    }

    lower = 0xFF;

    for (j = 0; j < len; j++, i++)
     *(dosname + i) = *(buf + j);
   } else {
    if ((*buf >= 'a') && (*buf <= 'z')) {
     *(dosname + i) = *buf - ('a' - 'A');

     if (i < 8)
      lower |= 0x08;
     else
      lower |= 0x10;
    } else if ((*buf >= 'A') && (*buf <= 'Z')) {
     *(dosname + i) = *buf;

     if (i < 8)
      upper |= 0x08;
     else
      upper |= 0x10;
    } else {
     *(dosname + i) = *buf;
    }
    i++;
   }
  }

  uniname++;
 }

 if (*dosname == 0xE5)
  *dosname = 0x05;

 if (*uniname != 0x0)
  lossy = 1;

 if (upper & lower)
  p_dosname->name_case = 0xFF;
 else
  p_dosname->name_case = lower;

 if (p_lossy)
  *p_lossy = lossy;
}
