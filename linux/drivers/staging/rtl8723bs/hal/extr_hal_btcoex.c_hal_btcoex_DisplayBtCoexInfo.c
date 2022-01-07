
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
typedef int * PBTCDBGINFO ;


 int DBG_BT_INFO_INIT (int *,int *,int ) ;
 int EXhalbtcoutsrc_DisplayBtCoexInfo (int *) ;
 int GLBtCoexist ;
 int GLBtcDbgInfo ;

void hal_btcoex_DisplayBtCoexInfo(struct adapter *padapter, u8 *pbuf, u32 bufsize)
{
 PBTCDBGINFO pinfo;


 pinfo = &GLBtcDbgInfo;
 DBG_BT_INFO_INIT(pinfo, pbuf, bufsize);
 EXhalbtcoutsrc_DisplayBtCoexInfo(&GLBtCoexist);
 DBG_BT_INFO_INIT(pinfo, ((void*)0), 0);
}
