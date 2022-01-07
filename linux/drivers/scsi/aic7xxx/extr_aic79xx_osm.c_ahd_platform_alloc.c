
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahd_softc {int seltime; TYPE_1__* platform_data; } ;
struct ahd_platform_data {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int AHD_LINUX_NOIRQ ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int ahd_lockinit (struct ahd_softc*) ;
 int aic79xx_seltime ;
 TYPE_1__* kzalloc (int,int ) ;

int
ahd_platform_alloc(struct ahd_softc *ahd, void *platform_arg)
{
 ahd->platform_data =
     kzalloc(sizeof(struct ahd_platform_data), GFP_ATOMIC);
 if (ahd->platform_data == ((void*)0))
  return (ENOMEM);
 ahd->platform_data->irq = AHD_LINUX_NOIRQ;
 ahd_lockinit(ahd);
 ahd->seltime = (aic79xx_seltime & 0x3) << 4;
 return (0);
}
