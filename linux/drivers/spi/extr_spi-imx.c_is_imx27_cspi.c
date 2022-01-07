
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_imx_data {TYPE_1__* devtype_data; } ;
struct TYPE_2__ {scalar_t__ devtype; } ;


 scalar_t__ IMX27_CSPI ;

__attribute__((used)) static inline int is_imx27_cspi(struct spi_imx_data *d)
{
 return d->devtype_data->devtype == IMX27_CSPI;
}
