
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int master; } ;
struct sh_sci_spi {int dummy; } ;


 int PIN_RXD ;
 int SCSPTR (struct sh_sci_spi*) ;
 int ioread8 (int ) ;
 struct sh_sci_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static inline u32 getmiso(struct spi_device *dev)
{
 struct sh_sci_spi *sp = spi_master_get_devdata(dev->master);

 return (ioread8(SCSPTR(sp)) & PIN_RXD) ? 1 : 0;
}
