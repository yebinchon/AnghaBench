
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int DBG_871X_SEL (void*,char*,...) ;
 int DBG_871X_SEL_NL (void*,char*,int) ;
 int rtw_sd_f0_read8 (struct adapter*,int) ;

void sd_f0_reg_dump(void *sel, struct adapter *adapter)
{
 int i;

 for (i = 0x0; i <= 0xff; i++) {
  if (i%16 == 0)
   DBG_871X_SEL_NL(sel, "0x%02x ", i);

  DBG_871X_SEL(sel, "%02x ", rtw_sd_f0_read8(adapter, i));

  if (i%16 == 15)
   DBG_871X_SEL(sel, "\n");
  else if (i%8 == 7)
   DBG_871X_SEL(sel, "\t");
 }
}
