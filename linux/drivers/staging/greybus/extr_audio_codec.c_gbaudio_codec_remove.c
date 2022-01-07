
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int snd_soc_unregister_codec (int *) ;

__attribute__((used)) static int gbaudio_codec_remove(struct platform_device *pdev)
{
 snd_soc_unregister_codec(&pdev->dev);
 return 0;
}
