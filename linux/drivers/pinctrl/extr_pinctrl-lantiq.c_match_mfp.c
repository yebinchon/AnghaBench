
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltq_pinmux_info {int num_mfp; TYPE_1__* mfp; } ;
struct TYPE_2__ {int pin; } ;



__attribute__((used)) static int match_mfp(const struct ltq_pinmux_info *info, int pin)
{
 int i;
 for (i = 0; i < info->num_mfp; i++) {
  if (info->mfp[i].pin == pin)
   return i;
 }
 return -1;
}
