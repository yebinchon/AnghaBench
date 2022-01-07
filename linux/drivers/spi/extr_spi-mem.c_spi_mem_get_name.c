
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_mem {char const* name; } ;



const char *spi_mem_get_name(struct spi_mem *mem)
{
 return mem->name;
}
