
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 rsi_sdio_set_cmd52_arg(bool rw,
      u8 func,
      u8 raw,
      u32 address,
      u8 writedata)
{
 return ((rw & 1) << 31) | ((func & 0x7) << 28) |
  ((raw & 1) << 27) | (1 << 26) |
  ((address & 0x1FFFF) << 9) | (1 << 8) |
  (writedata & 0xFF);
}
