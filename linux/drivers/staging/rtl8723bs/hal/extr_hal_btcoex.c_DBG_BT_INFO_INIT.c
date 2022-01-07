
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ size; int * info; } ;
typedef TYPE_1__* PBTCDBGINFO ;
typedef int BTCDBGINFO ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void DBG_BT_INFO_INIT(PBTCDBGINFO pinfo, u8 *pbuf, u32 size)
{
 if (!pinfo)
  return;

 memset(pinfo, 0, sizeof(BTCDBGINFO));

 if (pbuf && size) {
  pinfo->info = pbuf;
  pinfo->size = size;
 }
}
