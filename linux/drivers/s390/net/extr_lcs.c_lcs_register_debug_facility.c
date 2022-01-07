
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int debug_hex_ascii_view ;
 int * debug_register (char*,int,int,int) ;
 int debug_register_view (int *,int *) ;
 int debug_set_level (int *,int) ;
 int * lcs_dbf_setup ;
 int * lcs_dbf_trace ;
 int lcs_unregister_debug_facility () ;
 int pr_err (char*) ;

__attribute__((used)) static int
lcs_register_debug_facility(void)
{
 lcs_dbf_setup = debug_register("lcs_setup", 2, 1, 8);
 lcs_dbf_trace = debug_register("lcs_trace", 4, 1, 8);
 if (lcs_dbf_setup == ((void*)0) || lcs_dbf_trace == ((void*)0)) {
  pr_err("Not enough memory for debug facility.\n");
  lcs_unregister_debug_facility();
  return -ENOMEM;
 }
 debug_register_view(lcs_dbf_setup, &debug_hex_ascii_view);
 debug_set_level(lcs_dbf_setup, 2);
 debug_register_view(lcs_dbf_trace, &debug_hex_ascii_view);
 debug_set_level(lcs_dbf_trace, 2);
 return 0;
}
