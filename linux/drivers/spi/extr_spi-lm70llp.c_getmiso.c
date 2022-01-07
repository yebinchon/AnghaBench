
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_lm70llp {int port; } ;
struct spi_device {int dummy; } ;


 int SIO ;
 int parport_read_status (int ) ;
 struct spi_lm70llp* spidev_to_pp (struct spi_device*) ;

__attribute__((used)) static inline int getmiso(struct spi_device *s)
{
 struct spi_lm70llp *pp = spidev_to_pp(s);

 return ((SIO == (parport_read_status(pp->port) & SIO)) ? 0 : 1);
}
