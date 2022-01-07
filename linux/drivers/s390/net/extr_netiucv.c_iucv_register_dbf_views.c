
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int IUCV_DBF_DATA_LEN ;
 int IUCV_DBF_DATA_LEVEL ;
 int IUCV_DBF_DATA_NAME ;
 int IUCV_DBF_DATA_NR_AREAS ;
 int IUCV_DBF_DATA_PAGES ;
 int IUCV_DBF_SETUP_LEN ;
 int IUCV_DBF_SETUP_LEVEL ;
 int IUCV_DBF_SETUP_NAME ;
 int IUCV_DBF_SETUP_NR_AREAS ;
 int IUCV_DBF_SETUP_PAGES ;
 int IUCV_DBF_TRACE_LEN ;
 int IUCV_DBF_TRACE_LEVEL ;
 int IUCV_DBF_TRACE_NAME ;
 int IUCV_DBF_TRACE_NR_AREAS ;
 int IUCV_DBF_TRACE_PAGES ;
 int debug_hex_ascii_view ;
 int * debug_register (int ,int ,int ,int ) ;
 int debug_register_view (int *,int *) ;
 int debug_set_level (int *,int ) ;
 int * iucv_dbf_data ;
 int * iucv_dbf_setup ;
 int * iucv_dbf_trace ;
 int iucv_unregister_dbf_views () ;

__attribute__((used)) static int iucv_register_dbf_views(void)
{
 iucv_dbf_setup = debug_register(IUCV_DBF_SETUP_NAME,
     IUCV_DBF_SETUP_PAGES,
     IUCV_DBF_SETUP_NR_AREAS,
     IUCV_DBF_SETUP_LEN);
 iucv_dbf_data = debug_register(IUCV_DBF_DATA_NAME,
           IUCV_DBF_DATA_PAGES,
           IUCV_DBF_DATA_NR_AREAS,
           IUCV_DBF_DATA_LEN);
 iucv_dbf_trace = debug_register(IUCV_DBF_TRACE_NAME,
     IUCV_DBF_TRACE_PAGES,
     IUCV_DBF_TRACE_NR_AREAS,
     IUCV_DBF_TRACE_LEN);

 if ((iucv_dbf_setup == ((void*)0)) || (iucv_dbf_data == ((void*)0)) ||
     (iucv_dbf_trace == ((void*)0))) {
  iucv_unregister_dbf_views();
  return -ENOMEM;
 }
 debug_register_view(iucv_dbf_setup, &debug_hex_ascii_view);
 debug_set_level(iucv_dbf_setup, IUCV_DBF_SETUP_LEVEL);

 debug_register_view(iucv_dbf_data, &debug_hex_ascii_view);
 debug_set_level(iucv_dbf_data, IUCV_DBF_DATA_LEVEL);

 debug_register_view(iucv_dbf_trace, &debug_hex_ascii_view);
 debug_set_level(iucv_dbf_trace, IUCV_DBF_TRACE_LEVEL);

 return 0;
}
