
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ btdmAntNum; scalar_t__ pgAntNum; } ;
struct TYPE_4__ {TYPE_1__ boardInfo; } ;


 scalar_t__ BT_COEX_ANT_TYPE_ANTDIV ;
 scalar_t__ BT_COEX_ANT_TYPE_DETECTED ;
 scalar_t__ BT_COEX_ANT_TYPE_PG ;
 TYPE_2__ GLBtCoexist ;

void EXhalbtcoutsrc_SetAntNum(u8 type, u8 antNum)
{
 if (BT_COEX_ANT_TYPE_PG == type) {
  GLBtCoexist.boardInfo.pgAntNum = antNum;
  GLBtCoexist.boardInfo.btdmAntNum = antNum;
 } else if (BT_COEX_ANT_TYPE_ANTDIV == type) {
  GLBtCoexist.boardInfo.btdmAntNum = antNum;

 } else if (BT_COEX_ANT_TYPE_DETECTED == type) {
  GLBtCoexist.boardInfo.btdmAntNum = antNum;

 }
}
