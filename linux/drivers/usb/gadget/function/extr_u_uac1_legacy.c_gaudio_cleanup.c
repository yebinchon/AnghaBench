
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gaudio {int dummy; } ;


 int gaudio_close_snd_dev (struct gaudio*) ;

void gaudio_cleanup(struct gaudio *the_card)
{
 if (the_card)
  gaudio_close_snd_dev(the_card);
}
