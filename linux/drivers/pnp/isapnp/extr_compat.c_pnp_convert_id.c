
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char,char,char,unsigned short,unsigned short,unsigned short,unsigned short) ;

__attribute__((used)) static void pnp_convert_id(char *buf, unsigned short vendor,
      unsigned short device)
{
 sprintf(buf, "%c%c%c%x%x%x%x",
  'A' + ((vendor >> 2) & 0x3f) - 1,
  'A' + (((vendor & 3) << 3) | ((vendor >> 13) & 7)) - 1,
  'A' + ((vendor >> 8) & 0x1f) - 1,
  (device >> 4) & 0x0f, device & 0x0f,
  (device >> 12) & 0x0f, (device >> 8) & 0x0f);
}
