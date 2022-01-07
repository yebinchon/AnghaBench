
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MCFQSPI_BUSCLK ;
 int clamp (int,unsigned int,unsigned int) ;

__attribute__((used)) static u8 mcfqspi_qmr_baud(u32 speed_hz)
{
 return clamp((MCFQSPI_BUSCLK + speed_hz - 1) / speed_hz, 2u, 255u);
}
