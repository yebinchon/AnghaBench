
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct spi_engine_program {size_t length; int * instructions; } ;



__attribute__((used)) static void spi_engine_program_add_cmd(struct spi_engine_program *p,
 bool dry, uint16_t cmd)
{
 if (!dry)
  p->instructions[p->length] = cmd;
 p->length++;
}
