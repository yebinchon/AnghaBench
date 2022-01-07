
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gaudio {int dummy; } ;


 int ERROR (struct gaudio*,char*) ;
 int gaudio_open_snd_dev (struct gaudio*) ;

int gaudio_setup(struct gaudio *card)
{
 int ret;

 ret = gaudio_open_snd_dev(card);
 if (ret)
  ERROR(card, "we need at least one control device\n");

 return ret;

}
