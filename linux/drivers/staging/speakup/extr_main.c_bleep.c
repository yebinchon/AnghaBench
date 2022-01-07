
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {short freq; int active; int jiffies; } ;


 int msecs_to_jiffies (int) ;
 int spk_bleep_time ;
 TYPE_1__ spk_unprocessed_sound ;

__attribute__((used)) static void bleep(u_short val)
{
 static const short vals[] = {
  350, 370, 392, 414, 440, 466, 491, 523, 554, 587, 619, 659
 };
 short freq;
 int time = spk_bleep_time;

 freq = vals[val % 12];
 if (val > 11)
  freq *= (1 << (val / 12));
 spk_unprocessed_sound.freq = freq;
 spk_unprocessed_sound.jiffies = msecs_to_jiffies(time);
 spk_unprocessed_sound.active = 1;

}
