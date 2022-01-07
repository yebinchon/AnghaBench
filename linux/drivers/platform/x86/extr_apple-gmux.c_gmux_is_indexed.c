
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct apple_gmux_data {scalar_t__ iostart; } ;


 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static bool gmux_is_indexed(struct apple_gmux_data *gmux_data)
{
 u16 val;

 outb(0xaa, gmux_data->iostart + 0xcc);
 outb(0x55, gmux_data->iostart + 0xcd);
 outb(0x00, gmux_data->iostart + 0xce);

 val = inb(gmux_data->iostart + 0xcc) |
  (inb(gmux_data->iostart + 0xcd) << 8);

 if (val == 0x55aa)
  return 1;

 return 0;
}
