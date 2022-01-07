
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct otm3225a_spi_instruction {unsigned char reg; int value; scalar_t__ delay; } ;


 unsigned char OTM3225A_DATA_REG ;
 unsigned char OTM3225A_INDEX_REG ;
 int msleep (scalar_t__) ;
 int spi_write (struct spi_device*,unsigned char*,int) ;

__attribute__((used)) static void otm3225a_write(struct spi_device *spi,
      struct otm3225a_spi_instruction *instruction,
      unsigned int count)
{
 unsigned char buf[3];

 while (count--) {

  buf[0] = OTM3225A_INDEX_REG;
  buf[1] = 0x00;
  buf[2] = instruction->reg;
  spi_write(spi, buf, 3);


  buf[0] = OTM3225A_DATA_REG;
  buf[1] = (instruction->value >> 8) & 0xff;
  buf[2] = instruction->value & 0xff;
  spi_write(spi, buf, 3);


  if (instruction->delay)
   msleep(instruction->delay);
  instruction++;
 }
}
