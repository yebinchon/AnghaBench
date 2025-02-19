
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int accel ;
 void* bpp ;
 int dcolor ;
 int ddc3 ;
 int extvga ;
 int hsync1 ;
 int hsync2 ;
 char* mode_option ;
 int mtrr ;
 void* simple_strtoul (char*,char**,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strsep (char**,char*) ;
 int sync ;
 void* voffset ;
 void* vram ;
 void* vsync1 ;
 void* vsync2 ;
 void* vyres ;
 void* xres ;
 void* yres ;

__attribute__((used)) static int i810fb_setup(char *options)
{
 char *this_opt, *suffix = ((void*)0);

 if (!options || !*options)
  return 0;

 while ((this_opt = strsep(&options, ",")) != ((void*)0)) {
  if (!strncmp(this_opt, "mtrr", 4))
   mtrr = 1;
  else if (!strncmp(this_opt, "accel", 5))
   accel = 1;
  else if (!strncmp(this_opt, "extvga", 6))
   extvga = 1;
  else if (!strncmp(this_opt, "sync", 4))
   sync = 1;
  else if (!strncmp(this_opt, "vram:", 5))
   vram = (simple_strtoul(this_opt+5, ((void*)0), 0));
  else if (!strncmp(this_opt, "voffset:", 8))
   voffset = (simple_strtoul(this_opt+8, ((void*)0), 0));
  else if (!strncmp(this_opt, "xres:", 5))
   xres = simple_strtoul(this_opt+5, ((void*)0), 0);
  else if (!strncmp(this_opt, "yres:", 5))
   yres = simple_strtoul(this_opt+5, ((void*)0), 0);
  else if (!strncmp(this_opt, "vyres:", 6))
   vyres = simple_strtoul(this_opt+6, ((void*)0), 0);
  else if (!strncmp(this_opt, "bpp:", 4))
   bpp = simple_strtoul(this_opt+4, ((void*)0), 0);
  else if (!strncmp(this_opt, "hsync1:", 7)) {
   hsync1 = simple_strtoul(this_opt+7, &suffix, 0);
   if (strncmp(suffix, "H", 1))
    hsync1 *= 1000;
  } else if (!strncmp(this_opt, "hsync2:", 7)) {
   hsync2 = simple_strtoul(this_opt+7, &suffix, 0);
   if (strncmp(suffix, "H", 1))
    hsync2 *= 1000;
  } else if (!strncmp(this_opt, "vsync1:", 7))
   vsync1 = simple_strtoul(this_opt+7, ((void*)0), 0);
  else if (!strncmp(this_opt, "vsync2:", 7))
   vsync2 = simple_strtoul(this_opt+7, ((void*)0), 0);
  else if (!strncmp(this_opt, "dcolor", 6))
   dcolor = 1;
  else if (!strncmp(this_opt, "ddc3", 4))
   ddc3 = 1;
  else
   mode_option = this_opt;
 }
 return 0;
}
