
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_unregister (int ) ;
 int iucv_dbf_data ;
 int iucv_dbf_setup ;
 int iucv_dbf_trace ;

__attribute__((used)) static void iucv_unregister_dbf_views(void)
{
 debug_unregister(iucv_dbf_setup);
 debug_unregister(iucv_dbf_data);
 debug_unregister(iucv_dbf_trace);
}
