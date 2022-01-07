
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {scalar_t__ id; int name; int sname; } ;
struct gbaudio_module_info {int dev; } ;
struct gbaudio_codec_info {int lock; int dev; } ;


 int EINVAL ;
 int NAME_SIZE ;
 int dev_dbg (int ,char*,int ,...) ;
 int dev_err (int ,char*,int ) ;
 int gbaudio_module_disable_rx (struct gbaudio_module_info*,int) ;
 int gbaudio_module_disable_tx (struct gbaudio_module_info*,int) ;
 int gbaudio_module_enable_rx (struct gbaudio_codec_info*,struct gbaudio_module_info*,int) ;
 int gbaudio_module_enable_tx (struct gbaudio_codec_info*,struct gbaudio_module_info*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_soc_dapm_aif_in ;
 scalar_t__ snd_soc_dapm_aif_out ;
 int sscanf (int ,char*,char*,int*,char*) ;

int gbaudio_module_update(struct gbaudio_codec_info *codec,
     struct snd_soc_dapm_widget *w,
     struct gbaudio_module_info *module, int enable)
{
 int dai_id, ret;
 char intf_name[NAME_SIZE], dir[NAME_SIZE];

 dev_dbg(module->dev, "%s:Module update %s sequence\n", w->name,
  enable ? "Enable" : "Disable");

 if ((w->id != snd_soc_dapm_aif_in) && (w->id != snd_soc_dapm_aif_out)) {
  dev_dbg(codec->dev, "No action required for %s\n", w->name);
  return 0;
 }


 ret = sscanf(w->sname, "%s %d %s", intf_name, &dai_id, dir);
 if (ret < 3) {
  dev_err(codec->dev, "Error while parsing dai_id for %s\n",
   w->name);
  return -EINVAL;
 }

 mutex_lock(&codec->lock);
 if (w->id == snd_soc_dapm_aif_in) {
  if (enable)
   ret = gbaudio_module_enable_tx(codec, module, dai_id);
  else
   ret = gbaudio_module_disable_tx(module, dai_id);
 } else if (w->id == snd_soc_dapm_aif_out) {
  if (enable)
   ret = gbaudio_module_enable_rx(codec, module, dai_id);
  else
   ret = gbaudio_module_disable_rx(module, dai_id);
 }

 mutex_unlock(&codec->lock);

 return ret;
}
