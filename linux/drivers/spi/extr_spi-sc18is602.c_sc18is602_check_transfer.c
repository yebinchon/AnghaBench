
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ len; } ;
struct spi_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ SC18IS602_BUFSIZ ;

__attribute__((used)) static int sc18is602_check_transfer(struct spi_device *spi,
        struct spi_transfer *t, int tlen)
{
 if (t && t->len + tlen > SC18IS602_BUFSIZ)
  return -EINVAL;

 return 0;
}
