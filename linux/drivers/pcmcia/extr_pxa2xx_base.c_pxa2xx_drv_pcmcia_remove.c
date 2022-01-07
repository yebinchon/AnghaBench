
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skt_dev_info {int nskt; int * skt; } ;
struct platform_device {int dummy; } ;


 struct skt_dev_info* platform_get_drvdata (struct platform_device*) ;
 int soc_pcmcia_remove_one (int *) ;

__attribute__((used)) static int pxa2xx_drv_pcmcia_remove(struct platform_device *dev)
{
 struct skt_dev_info *sinfo = platform_get_drvdata(dev);
 int i;

 for (i = 0; i < sinfo->nskt; i++)
  soc_pcmcia_remove_one(&sinfo->skt[i]);

 return 0;
}
