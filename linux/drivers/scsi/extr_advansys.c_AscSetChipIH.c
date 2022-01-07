
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int PortAddr ;


 int AscSetBank (int ,int) ;
 int AscWriteChipIH (int ,int ) ;

__attribute__((used)) static void AscSetChipIH(PortAddr iop_base, ushort ins_code)
{
 AscSetBank(iop_base, 1);
 AscWriteChipIH(iop_base, ins_code);
 AscSetBank(iop_base, 0);
}
