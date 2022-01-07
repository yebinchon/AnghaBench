
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int adt7316_spi_multi_write (void*,int ,int,int *) ;

__attribute__((used)) static int adt7316_spi_write(void *client, u8 reg, u8 val)
{
 return adt7316_spi_multi_write(client, reg, 1, &val);
}
