
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_871X_SEL_NL (void*,char*,int ) ;
 int GlobalDebugLevel ;

void dump_log_level(void *sel)
{
 DBG_871X_SEL_NL(sel, "log_level:%d\n", GlobalDebugLevel);
}
