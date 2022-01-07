
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int rspi_parse_dt(struct device *dev, struct spi_controller *ctlr)
{
 return -EINVAL;
}
