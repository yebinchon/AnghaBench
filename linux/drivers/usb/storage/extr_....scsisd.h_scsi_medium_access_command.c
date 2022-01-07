
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;
__attribute__((used)) static inline int scsi_medium_access_command(struct scsi_cmnd *scmd)
{
 switch (scmd->cmnd[0]) {
 case 143:
 case 147:
 case 146:
 case 145:
 case 142:
 case 139:
 case 138:
 case 137:
 case 131:
 case 135:
 case 134:
 case 133:
 case 130:
 case 129:
 case 141:
  return 1;
 case 140:
  switch (scmd->cmnd[9]) {
  case 144:
  case 136:
  case 132:
  case 128:
   return 1;
  }
 }

 return 0;
}
