
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortAddr ;


 int ASC_CHIP_MIN_VER_EISA ;
 scalar_t__ ASC_EISA_REV_IOP_MASK ;
 scalar_t__ ASC_GET_EISA_SLOT (int) ;
 unsigned short ASC_IS_EISA ;
 unsigned char AscGetChipVerNo (int) ;
 unsigned char inp (int) ;

__attribute__((used)) static unsigned char AscGetChipVersion(PortAddr iop_base,
           unsigned short bus_type)
{
 if (bus_type & ASC_IS_EISA) {
  PortAddr eisa_iop;
  unsigned char revision;
  eisa_iop = (PortAddr) ASC_GET_EISA_SLOT(iop_base) |
      (PortAddr) ASC_EISA_REV_IOP_MASK;
  revision = inp(eisa_iop);
  return ASC_CHIP_MIN_VER_EISA - 1 + revision;
 }
 return AscGetChipVerNo(iop_base);
}
