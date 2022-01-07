
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int HPC_ERROR ;
 int WPG_1ST_BUS_INDEX ;
 int WPG_1ST_EXTSLOT_INDEX ;

__attribute__((used)) static u8 hpc_readcmdtoindex(u8 cmd, u8 index)
{
 u8 rc;

 switch (cmd) {
 case 133:
  rc = 0x0F;
  break;
 case 128:
 case 135:
  rc = index;
  break;
 case 132:
  rc = index + WPG_1ST_EXTSLOT_INDEX;
  break;
 case 134:
  rc = index + WPG_1ST_BUS_INDEX - 1;
  break;
 case 129:
  rc = 0x28;
  break;
 case 130:
  rc = 0x25;
  break;
 case 131:
  rc = 0x27;
  break;
 default:
  rc = HPC_ERROR;
 }
 return rc;
}
