
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cmg_chars {scalar_t__* values; } ;
struct TYPE_2__ {scalar_t__* values; } ;
struct channel_path {TYPE_1__ cmg_chars; } ;


 int NR_MEASUREMENT_CHARS ;

__attribute__((used)) static void
chsc_initialize_cmg_chars(struct channel_path *chp, u8 cmcv,
     struct cmg_chars *chars)
{
 int i, mask;

 for (i = 0; i < NR_MEASUREMENT_CHARS; i++) {
  mask = 0x80 >> (i + 3);
  if (cmcv & mask)
   chp->cmg_chars.values[i] = chars->values[i];
  else
   chp->cmg_chars.values[i] = 0;
 }
}
