
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_msiof_spi_priv {int mapbase; } ;




 int ioread16 (int ) ;
 int ioread32 (int ) ;

__attribute__((used)) static u32 sh_msiof_read(struct sh_msiof_spi_priv *p, int reg_offs)
{
 switch (reg_offs) {
 case 128:
 case 129:
  return ioread16(p->mapbase + reg_offs);
 default:
  return ioread32(p->mapbase + reg_offs);
 }
}
