
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_msiof_spi_priv {int mapbase; } ;




 int iowrite16 (int ,int ) ;
 int iowrite32 (int ,int ) ;

__attribute__((used)) static void sh_msiof_write(struct sh_msiof_spi_priv *p, int reg_offs,
      u32 value)
{
 switch (reg_offs) {
 case 128:
 case 129:
  iowrite16(value, p->mapbase + reg_offs);
  break;
 default:
  iowrite32(value, p->mapbase + reg_offs);
  break;
 }
}
