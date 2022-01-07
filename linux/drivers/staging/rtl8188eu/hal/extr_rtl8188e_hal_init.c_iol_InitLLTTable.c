
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;
typedef int s32 ;


 int CMD_INIT_LLT ;
 scalar_t__ REG_TDECTRL ;
 int _SUCCESS ;
 int iol_execute (struct adapter*,int ) ;
 int iol_mode_enable (struct adapter*,int) ;
 int usb_write8 (struct adapter*,scalar_t__,int ) ;

__attribute__((used)) static s32 iol_InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy)
{
 s32 rst = _SUCCESS;

 iol_mode_enable(padapter, 1);
 usb_write8(padapter, REG_TDECTRL+1, txpktbuf_bndy);
 rst = iol_execute(padapter, CMD_INIT_LLT);
 iol_mode_enable(padapter, 0);
 return rst;
}
