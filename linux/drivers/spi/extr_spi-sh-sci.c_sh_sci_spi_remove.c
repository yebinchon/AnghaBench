
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int master; } ;
struct sh_sci_spi {TYPE_1__ bitbang; int membase; } ;
struct platform_device {int dummy; } ;


 int PIN_INIT ;
 int iounmap (int ) ;
 struct sh_sci_spi* platform_get_drvdata (struct platform_device*) ;
 int setbits (struct sh_sci_spi*,int ,int ) ;
 int spi_bitbang_stop (TYPE_1__*) ;
 int spi_master_put (int ) ;

__attribute__((used)) static int sh_sci_spi_remove(struct platform_device *dev)
{
 struct sh_sci_spi *sp = platform_get_drvdata(dev);

 spi_bitbang_stop(&sp->bitbang);
 setbits(sp, PIN_INIT, 0);
 iounmap(sp->membase);
 spi_master_put(sp->bitbang.master);
 return 0;
}
