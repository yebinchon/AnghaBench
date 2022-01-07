
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int gbaudio_dai ;
 int snd_soc_register_codec (int *,int *,int ,int ) ;
 int soc_codec_dev_gbaudio ;

__attribute__((used)) static int gbaudio_codec_probe(struct platform_device *pdev)
{
 return snd_soc_register_codec(&pdev->dev, &soc_codec_dev_gbaudio,
   gbaudio_dai, ARRAY_SIZE(gbaudio_dai));
}
