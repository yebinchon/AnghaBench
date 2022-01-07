
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short ftdi_232am_baud_base_to_divisor (int,int) ;

__attribute__((used)) static unsigned short int ftdi_232am_baud_to_divisor(int baud)
{
  return ftdi_232am_baud_base_to_divisor(baud, 48000000);
}
