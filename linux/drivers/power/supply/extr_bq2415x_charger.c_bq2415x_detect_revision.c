
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {int dummy; } ;
 int BQ2415X_REVISION ;

 int bq2415x_detect_chip (struct bq2415x_device*) ;
 int bq2415x_exec_command (struct bq2415x_device*,int ) ;

__attribute__((used)) static int bq2415x_detect_revision(struct bq2415x_device *bq)
{
 int ret = bq2415x_exec_command(bq, BQ2415X_REVISION);
 int chip = bq2415x_detect_chip(bq);

 if (ret < 0 || chip < 0)
  return -1;

 switch (chip) {
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
  if (ret >= 0 && ret <= 3)
   return ret;
  return -1;
 case 135:
 case 134:
 case 132:
 case 131:
 case 130:
 case 129:
  if (ret == 3)
   return 0;
  else if (ret == 1)
   return 1;
  return -1;
 case 133:
  if (ret == 3)
   return 3;
  return -1;
 case 128:
  return -1;
 }

 return -1;
}
