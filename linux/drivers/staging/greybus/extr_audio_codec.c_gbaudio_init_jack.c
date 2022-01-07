
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_codec {int dummy; } ;
struct TYPE_2__ {int jack; } ;
struct gbaudio_module_info {int jack_mask; int dev_id; int button_mask; int dev; TYPE_1__ button_jack; int button_name; TYPE_1__ headset_jack; int jack_name; } ;


 int KEY_MEDIA ;
 int KEY_VOICECOMMAND ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int NAME_SIZE ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int dev_err (int ,char*) ;
 int snd_jack_set_key (int ,int,int ) ;
 int snd_soc_jack_new (struct snd_soc_codec*,int ,int,TYPE_1__*) ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static int gbaudio_init_jack(struct gbaudio_module_info *module,
        struct snd_soc_codec *codec)
{
 int ret;

 if (!module->jack_mask)
  return 0;

 snprintf(module->jack_name, NAME_SIZE, "GB %d Headset Jack",
   module->dev_id);
 ret = snd_soc_jack_new(codec, module->jack_name, module->jack_mask,
          &module->headset_jack);
 if (ret) {
  dev_err(module->dev, "Failed to create new jack\n");
  return ret;
 }

 if (!module->button_mask)
  return 0;

 snprintf(module->button_name, NAME_SIZE, "GB %d Button Jack",
   module->dev_id);
 ret = snd_soc_jack_new(codec, module->button_name, module->button_mask,
          &module->button_jack);
 if (ret) {
  dev_err(module->dev, "Failed to create button jack\n");
  return ret;
 }
 if (module->button_mask & SND_JACK_BTN_0) {
  ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_0,
           KEY_MEDIA);
  if (ret) {
   dev_err(module->dev, "Failed to set BTN_0\n");
   return ret;
  }
 }

 if (module->button_mask & SND_JACK_BTN_1) {
  ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_1,
           KEY_VOICECOMMAND);
  if (ret) {
   dev_err(module->dev, "Failed to set BTN_1\n");
   return ret;
  }
 }

 if (module->button_mask & SND_JACK_BTN_2) {
  ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_2,
           KEY_VOLUMEUP);
  if (ret) {
   dev_err(module->dev, "Failed to set BTN_2\n");
   return ret;
  }
 }

 if (module->button_mask & SND_JACK_BTN_3) {
  ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_3,
           KEY_VOLUMEDOWN);
  if (ret) {
   dev_err(module->dev, "Failed to set BTN_0\n");
   return ret;
  }
 }







 return 0;
}
