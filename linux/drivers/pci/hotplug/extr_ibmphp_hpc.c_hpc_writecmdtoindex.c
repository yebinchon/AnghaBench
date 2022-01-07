
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
 int HPC_ERROR ;





 int WPG_1ST_BUS_INDEX ;
 int err (char*,int) ;

__attribute__((used)) static u8 hpc_writecmdtoindex(u8 cmd, u8 index)
{
 u8 rc;

 switch (cmd) {
 case 135:
 case 137:
 case 133:
 case 134:
 case 136:
 case 143:
 case 144:
  rc = 0x0F;
  break;

 case 129:
 case 128:
 case 132:
 case 131:
 case 130:
  rc = index;
  break;

 case 140:
 case 139:
 case 138:
 case 142:
 case 141:
  rc = index + WPG_1ST_BUS_INDEX - 1;
  break;

 default:
  err("hpc_writecmdtoindex - Error invalid cmd[%x]\n", cmd);
  rc = HPC_ERROR;
 }

 return rc;
}
