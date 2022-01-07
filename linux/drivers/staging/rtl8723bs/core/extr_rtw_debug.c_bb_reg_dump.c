
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int DBG_871X_SEL (void*,char*,...) ;
 int DBG_871X_SEL_NL (void*,char*,...) ;
 int rtw_read32 (struct adapter*,int) ;

void bb_reg_dump(void *sel, struct adapter *adapter)
{
 int i, j = 1;

 DBG_871X_SEL_NL(sel, "======= BB REG =======\n");
 for (i = 0x800; i < 0x1000 ; i += 4) {
  if (j%4 == 1)
   DBG_871X_SEL_NL(sel, "0x%03x", i);
  DBG_871X_SEL(sel, " 0x%08x ", rtw_read32(adapter, i));
  if ((j++)%4 == 0)
   DBG_871X_SEL(sel, "\n");
 }
}
