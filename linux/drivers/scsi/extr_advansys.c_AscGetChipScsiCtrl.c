
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PortAddr ;


 int AscSetBank (scalar_t__,int) ;
 scalar_t__ IOP_REG_SC ;
 unsigned char inp (scalar_t__) ;

__attribute__((used)) static unsigned char AscGetChipScsiCtrl(PortAddr iop_base)
{
 unsigned char sc;

 AscSetBank(iop_base, 1);
 sc = inp(iop_base + IOP_REG_SC);
 AscSetBank(iop_base, 0);
 return sc;
}
