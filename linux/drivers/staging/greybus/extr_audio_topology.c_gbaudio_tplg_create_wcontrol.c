
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol_new {int dummy; } ;
struct gbaudio_module_info {int dev; } ;
struct TYPE_2__ {int type; } ;
struct gb_audio_control {int iface; int id; int name; TYPE_1__ info; } ;


 int EINVAL ;


 int dev_dbg (int ,char*,int ,int ,int) ;
 int gbaudio_tplg_create_enum_ctl (struct gbaudio_module_info*,struct snd_kcontrol_new*,struct gb_audio_control*) ;
 int gbaudio_tplg_create_mixer_ctl (struct gbaudio_module_info*,struct snd_kcontrol_new*,struct gb_audio_control*) ;

__attribute__((used)) static int gbaudio_tplg_create_wcontrol(struct gbaudio_module_info *gb,
     struct snd_kcontrol_new *kctl,
     struct gb_audio_control *ctl)
{
 int ret;

 switch (ctl->iface) {
 case 128:
  switch (ctl->info.type) {
  case 129:
   ret = gbaudio_tplg_create_enum_ctl(gb, kctl, ctl);
   break;
  default:
   ret = gbaudio_tplg_create_mixer_ctl(gb, kctl, ctl);
   break;
  }
  break;
 default:
  return -EINVAL;
 }

 dev_dbg(gb->dev, "%s:%d DAPM control created, ret:%d\n", ctl->name,
  ctl->id, ret);
 return ret;
}
