
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int adt7316_spi_multi_read (void*,int ,int,int *) ;

__attribute__((used)) static int adt7316_spi_read(void *client, u8 reg, u8 *data)
{
 return adt7316_spi_multi_read(client, reg, 1, data);
}
