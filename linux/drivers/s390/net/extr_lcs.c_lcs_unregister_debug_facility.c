
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_unregister (int ) ;
 int lcs_dbf_setup ;
 int lcs_dbf_trace ;

__attribute__((used)) static void
lcs_unregister_debug_facility(void)
{
 debug_unregister(lcs_dbf_setup);
 debug_unregister(lcs_dbf_trace);
}
