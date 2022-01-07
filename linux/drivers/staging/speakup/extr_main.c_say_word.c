
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef scalar_t__ u_long ;
struct vc_data {int dummy; } ;


 int PUNC ;
 int SPACE ;
 int * buf ;
 scalar_t__ get_word (struct vc_data*) ;
 int spk_punc_mask ;
 int spkup_write (int *,scalar_t__) ;

__attribute__((used)) static void say_word(struct vc_data *vc)
{
 u_long cnt = get_word(vc);
 u_short saved_punc_mask = spk_punc_mask;

 if (cnt == 0)
  return;
 spk_punc_mask = PUNC;
 buf[cnt++] = SPACE;
 spkup_write(buf, cnt);
 spk_punc_mask = saved_punc_mask;
}
