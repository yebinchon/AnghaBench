
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_FB_GBE_MEM ;
 int TILE_SIZE ;
 int * default_mode ;
 int default_mode_CRT ;
 int default_mode_LCD ;
 int * default_var ;
 int default_var_CRT ;
 int default_var_LCD ;
 int flat_panel_enabled ;
 int gbe_mem_size ;
 int memparse (char*,char**) ;
 char* mode_option ;
 int strncmp (char*,char*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int gbefb_setup(char *options)
{
 char *this_opt;

 if (!options || !*options)
  return 0;

 while ((this_opt = strsep(&options, ",")) != ((void*)0)) {
  if (!strncmp(this_opt, "monitor:", 8)) {
   if (!strncmp(this_opt + 8, "crt", 3)) {
    flat_panel_enabled = 0;
    default_var = &default_var_CRT;
    default_mode = &default_mode_CRT;
   } else if (!strncmp(this_opt + 8, "1600sw", 6) ||
       !strncmp(this_opt + 8, "lcd", 3)) {
    flat_panel_enabled = 1;
    default_var = &default_var_LCD;
    default_mode = &default_mode_LCD;
   }
  } else if (!strncmp(this_opt, "mem:", 4)) {
   gbe_mem_size = memparse(this_opt + 4, &this_opt);
   if (gbe_mem_size > CONFIG_FB_GBE_MEM * 1024 * 1024)
    gbe_mem_size = CONFIG_FB_GBE_MEM * 1024 * 1024;
   if (gbe_mem_size < TILE_SIZE)
    gbe_mem_size = TILE_SIZE;
  } else
   mode_option = this_opt;
 }
 return 0;
}
