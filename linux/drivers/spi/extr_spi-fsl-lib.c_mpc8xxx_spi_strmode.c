
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SPI_CPM2 ;
 unsigned int SPI_CPM_MODE ;
 unsigned int SPI_QE ;
 unsigned int SPI_QE_CPU_MODE ;

const char *mpc8xxx_spi_strmode(unsigned int flags)
{
 if (flags & SPI_QE_CPU_MODE) {
  return "QE CPU";
 } else if (flags & SPI_CPM_MODE) {
  if (flags & SPI_QE)
   return "QE";
  else if (flags & SPI_CPM2)
   return "CPM2";
  else
   return "CPM1";
 }
 return "CPU";
}
