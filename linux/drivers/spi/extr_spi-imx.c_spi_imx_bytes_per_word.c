
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int spi_imx_bytes_per_word(const int bits_per_word)
{
 if (bits_per_word <= 8)
  return 1;
 else if (bits_per_word <= 16)
  return 2;
 else
  return 4;
}
