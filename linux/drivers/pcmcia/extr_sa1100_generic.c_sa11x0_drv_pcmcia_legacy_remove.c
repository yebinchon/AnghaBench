
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skt_dev_info {int nskt; int * skt; } ;
struct platform_device {int dummy; } ;


 struct skt_dev_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int soc_pcmcia_remove_one (int *) ;

__attribute__((used)) static int sa11x0_drv_pcmcia_legacy_remove(struct platform_device *dev)
{
 struct skt_dev_info *sinfo = platform_get_drvdata(dev);
 int i;

 platform_set_drvdata(dev, ((void*)0));

 for (i = 0; i < sinfo->nskt; i++)
  soc_pcmcia_remove_one(&sinfo->skt[i]);

 return 0;
}
