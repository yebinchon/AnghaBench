
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
typedef enum modulation { ____Placeholder_modulation } modulation ;




 int FSK ;
 int MASK_DATAMODUL_MODULATION_TYPE ;
 int OOK ;
 int REG_DATAMODUL ;
 int UNDEF ;
 int rf69_read_reg (struct spi_device*,int ) ;

__attribute__((used)) static enum modulation rf69_get_modulation(struct spi_device *spi)
{
 u8 modulation_reg;

 modulation_reg = rf69_read_reg(spi, REG_DATAMODUL);

 switch (modulation_reg & MASK_DATAMODUL_MODULATION_TYPE) {
 case 128:
  return OOK;
 case 129:
  return FSK;
 default:
  return UNDEF;
 }
}
