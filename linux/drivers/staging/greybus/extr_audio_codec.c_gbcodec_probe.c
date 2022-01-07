
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {int dev; } ;
struct gbaudio_codec_info {struct snd_soc_codec* codec; int dai_list; int lock; int module_list; int dev; } ;
struct gbaudio_codec_dai {int list; int id; } ;
struct TYPE_3__ {int id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int device_init_wakeup (int ,int) ;
 void* devm_kzalloc (int ,int,int ) ;
 TYPE_1__* gbaudio_dai ;
 struct gbaudio_codec_info* gbcodec ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int snd_soc_codec_set_drvdata (struct snd_soc_codec*,struct gbaudio_codec_info*) ;

__attribute__((used)) static int gbcodec_probe(struct snd_soc_codec *codec)
{
 int i;
 struct gbaudio_codec_info *info;
 struct gbaudio_codec_dai *dai;

 info = devm_kzalloc(codec->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->dev = codec->dev;
 INIT_LIST_HEAD(&info->module_list);
 mutex_init(&info->lock);
 INIT_LIST_HEAD(&info->dai_list);


 for (i = 0; i < ARRAY_SIZE(gbaudio_dai); i++) {
  dai = devm_kzalloc(codec->dev, sizeof(*dai), GFP_KERNEL);
  if (!dai)
   return -ENOMEM;
  dai->id = gbaudio_dai[i].id;
  list_add(&dai->list, &info->dai_list);
 }

 info->codec = codec;
 snd_soc_codec_set_drvdata(codec, info);
 gbcodec = info;

 device_init_wakeup(codec->dev, 1);
 return 0;
}
