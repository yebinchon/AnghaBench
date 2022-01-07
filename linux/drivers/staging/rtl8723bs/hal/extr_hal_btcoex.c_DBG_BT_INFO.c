
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ len; scalar_t__ size; int * info; } ;
typedef TYPE_1__* PBTCDBGINFO ;


 TYPE_1__ GLBtcDbgInfo ;
 int memcpy (int *,int *,scalar_t__) ;
 scalar_t__ strlen (int *) ;

void DBG_BT_INFO(u8 *dbgmsg)
{
 PBTCDBGINFO pinfo;
 u32 msglen;
 u8 *pbuf;


 pinfo = &GLBtcDbgInfo;

 if (!pinfo->info)
  return;

 msglen = strlen(dbgmsg);
 if (pinfo->len + msglen > pinfo->size)
  return;

 pbuf = pinfo->info + pinfo->len;
 memcpy(pbuf, dbgmsg, msglen);
 pinfo->len += msglen;
}
