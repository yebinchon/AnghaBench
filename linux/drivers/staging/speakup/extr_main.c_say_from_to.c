
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_long ;
typedef int u_char ;
struct vc_data {int vc_size_row; } ;
struct TYPE_2__ {int mask; } ;


 char SPACE ;
 char* buf ;
 int get_attributes (struct vc_data*,int *) ;
 char get_char (struct vc_data*,int *,int *) ;
 int spk_attr ;
 int spk_old_attr ;
 TYPE_1__* spk_punc_info ;
 int spk_punc_mask ;
 size_t spk_reading_punc ;
 int spkup_write (char*,int) ;

__attribute__((used)) static int say_from_to(struct vc_data *vc, u_long from, u_long to,
         int read_punc)
{
 int i = 0;
 u_char tmp;
 u_short saved_punc_mask = spk_punc_mask;

 spk_old_attr = spk_attr;
 spk_attr = get_attributes(vc, (u_short *)from);
 while (from < to) {
  buf[i++] = get_char(vc, (u_short *)from, &tmp);
  from += 2;
  if (i >= vc->vc_size_row)
   break;
 }
 for (--i; i >= 0; i--)
  if (buf[i] != SPACE)
   break;
 buf[++i] = SPACE;
 buf[++i] = '\0';
 if (i < 1)
  return i;
 if (read_punc)
  spk_punc_mask = spk_punc_info[spk_reading_punc].mask;
 spkup_write(buf, i);
 if (read_punc)
  spk_punc_mask = saved_punc_mask;
 return i - 1;
}
