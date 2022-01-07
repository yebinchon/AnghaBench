
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;
struct platform_device {int id; } ;


 struct soc_pcmcia_socket* platform_get_drvdata (struct platform_device*) ;
 int sa11x0_drv_pcmcia_legacy_remove (struct platform_device*) ;
 int soc_pcmcia_remove_one (struct soc_pcmcia_socket*) ;

__attribute__((used)) static int sa11x0_drv_pcmcia_remove(struct platform_device *dev)
{
 struct soc_pcmcia_socket *skt;

 if (dev->id == -1)
  return sa11x0_drv_pcmcia_legacy_remove(dev);

 skt = platform_get_drvdata(dev);

 soc_pcmcia_remove_one(skt);

 return 0;
}
