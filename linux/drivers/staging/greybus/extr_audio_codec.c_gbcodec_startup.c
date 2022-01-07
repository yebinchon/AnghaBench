
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; int id; } ;
struct snd_pcm_substream {int stream; } ;
struct gbaudio_stream_params {int state; } ;
struct gbaudio_codec_info {int lock; int dev; int module_list; } ;


 int EINVAL ;
 int ENODEV ;
 int GBAUDIO_CODEC_STARTUP ;
 int dev_err (int ,char*) ;
 struct gbaudio_codec_info* dev_get_drvdata (int ) ;
 struct gbaudio_stream_params* find_dai_stream_params (struct gbaudio_codec_info*,int ,int ) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_stay_awake (int ) ;

__attribute__((used)) static int gbcodec_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct gbaudio_codec_info *codec = dev_get_drvdata(dai->dev);
 struct gbaudio_stream_params *params;

 mutex_lock(&codec->lock);

 if (list_empty(&codec->module_list)) {
  dev_err(codec->dev, "No codec module available\n");
  mutex_unlock(&codec->lock);
  return -ENODEV;
 }

 params = find_dai_stream_params(codec, dai->id, substream->stream);
 if (!params) {
  dev_err(codec->dev, "Failed to fetch dai_stream pointer\n");
  mutex_unlock(&codec->lock);
  return -EINVAL;
 }
 params->state = GBAUDIO_CODEC_STARTUP;
 mutex_unlock(&codec->lock);

 pm_stay_awake(dai->dev);

 return 0;
}
