
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int uchar ;
typedef int PortAddr ;


 int ASC_MAX_TID ;
 int AscGetChipCfgLsw (int ) ;
 int AscGetChipScsiID (int ) ;
 int AscSetChipCfgLsw (int ,int) ;

__attribute__((used)) static uchar AscSetChipScsiID(PortAddr iop_base, uchar new_host_id)
{
 ushort cfg_lsw;

 if (AscGetChipScsiID(iop_base) == new_host_id) {
  return (new_host_id);
 }
 cfg_lsw = AscGetChipCfgLsw(iop_base);
 cfg_lsw &= 0xF8FF;
 cfg_lsw |= (ushort)((new_host_id & ASC_MAX_TID) << 8);
 AscSetChipCfgLsw(iop_base, cfg_lsw);
 return (AscGetChipScsiID(iop_base));
}
