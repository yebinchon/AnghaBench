
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gaudio_snd_dev {scalar_t__ filp; } ;
struct gaudio {struct gaudio_snd_dev capture; struct gaudio_snd_dev playback; struct gaudio_snd_dev control; } ;


 int filp_close (scalar_t__,int *) ;

__attribute__((used)) static int gaudio_close_snd_dev(struct gaudio *gau)
{
 struct gaudio_snd_dev *snd;


 snd = &gau->control;
 if (snd->filp)
  filp_close(snd->filp, ((void*)0));


 snd = &gau->playback;
 if (snd->filp)
  filp_close(snd->filp, ((void*)0));


 snd = &gau->capture;
 if (snd->filp)
  filp_close(snd->filp, ((void*)0));

 return 0;
}
