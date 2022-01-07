
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbus_priv {int dummy; } ;



__attribute__((used)) static size_t cw1200_spi_align_size(struct hwbus_priv *self, size_t size)
{
 return size & 1 ? size + 1 : size;
}
