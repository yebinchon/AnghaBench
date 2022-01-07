
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_871X_SEL_NL (void*,char*,char*,int ) ;
 int DRIVERVERSION ;

void dump_drv_version(void *sel)
{
 DBG_871X_SEL_NL(sel, "%s %s\n", "rtl8723bs", DRIVERVERSION);
}
