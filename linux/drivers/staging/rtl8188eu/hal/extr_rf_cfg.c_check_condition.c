
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct odm_dm_struct {int BoardType; int SupportPlatform; int SupportInterface; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {struct odm_dm_struct odmpriv; } ;



__attribute__((used)) static bool check_condition(struct adapter *adapt, const u32 condition)
{
 struct odm_dm_struct *odm = &adapt->HalData->odmpriv;
 u32 _board = odm->BoardType;
 u32 _platform = odm->SupportPlatform;
 u32 _interface = odm->SupportInterface;
 u32 cond = condition;

 if (condition == 0xCDCDCDCD)
  return 1;

 cond = condition & 0x000000FF;
 if ((_board == cond) && cond != 0x00)
  return 0;

 cond = condition & 0x0000FF00;
 cond >>= 8;
 if ((_interface & cond) == 0 && cond != 0x07)
  return 0;

 cond = condition & 0x00FF0000;
 cond >>= 16;
 if ((_platform & cond) == 0 && cond != 0x0F)
  return 0;
 return 1;
}
