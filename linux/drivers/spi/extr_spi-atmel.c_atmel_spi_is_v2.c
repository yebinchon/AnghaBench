
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_spi2; } ;
struct atmel_spi {TYPE_1__ caps; } ;



__attribute__((used)) static bool atmel_spi_is_v2(struct atmel_spi *as)
{
 return as->caps.is_spi2;
}
