
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcmcia_low_level {int first; int nr; } ;
struct device {int dummy; } ;


 int MECR ;
 int MECR_CIT ;
 int MECR_NOS ;
 int __raw_writel (int ,int ) ;
 scalar_t__ machine_is_arcom_zeus () ;
 scalar_t__ machine_is_viper () ;

void pxa2xx_configure_sockets(struct device *dev, struct pcmcia_low_level *ops)
{




 uint32_t mecr = MECR_CIT;


 if ((ops->first + ops->nr) > 1 ||
     machine_is_viper() || machine_is_arcom_zeus())
  mecr |= MECR_NOS;

 __raw_writel(mecr, MECR);
}
