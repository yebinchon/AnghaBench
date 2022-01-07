
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_audio_widget {int type; int ncontrols; } ;


 int EINVAL ;
__attribute__((used)) static int gbaudio_validate_kcontrol_count(struct gb_audio_widget *w)
{
 int ret = 0;

 switch (w->type) {
 case 129:
 case 134:
 case 132:
 case 130:
 case 133:
  if (w->ncontrols)
   ret = -EINVAL;
  break;
 case 128:
 case 131:
  if (w->ncontrols != 1)
   ret = -EINVAL;
  break;
 default:
  break;
 }

 return ret;
}
