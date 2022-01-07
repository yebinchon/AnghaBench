
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 void* backlight ;
 void* bpp ;
 int flatpanel ;
 int forceCRTC ;
 int fpdither ;
 int hwcur ;
 char* mode_option ;
 int noaccel ;
 int nomtrr ;
 int noscale ;
 void* paneltweak ;
 int reverse_i2c ;
 int simple_strtol (char*,int *,int ) ;
 void* simple_strtoul (char*,int *,int ) ;
 int strncmp (char*,char*,int) ;
 char* strsep (char**,char*) ;
 void* vram ;

__attribute__((used)) static int nvidiafb_setup(char *options)
{
 char *this_opt;

 NVTRACE_ENTER();
 if (!options || !*options)
  return 0;

 while ((this_opt = strsep(&options, ",")) != ((void*)0)) {
  if (!strncmp(this_opt, "forceCRTC", 9)) {
   char *p;

   p = this_opt + 9;
   if (!*p || !*(++p))
    continue;
   forceCRTC = *p - '0';
   if (forceCRTC < 0 || forceCRTC > 1)
    forceCRTC = -1;
  } else if (!strncmp(this_opt, "flatpanel", 9)) {
   flatpanel = 1;
  } else if (!strncmp(this_opt, "hwcur", 5)) {
   hwcur = 1;
  } else if (!strncmp(this_opt, "noaccel", 6)) {
   noaccel = 1;
  } else if (!strncmp(this_opt, "noscale", 7)) {
   noscale = 1;
  } else if (!strncmp(this_opt, "reverse_i2c", 11)) {
   reverse_i2c = 1;
  } else if (!strncmp(this_opt, "paneltweak:", 11)) {
   paneltweak = simple_strtoul(this_opt+11, ((void*)0), 0);
  } else if (!strncmp(this_opt, "vram:", 5)) {
   vram = simple_strtoul(this_opt+5, ((void*)0), 0);
  } else if (!strncmp(this_opt, "backlight:", 10)) {
   backlight = simple_strtoul(this_opt+10, ((void*)0), 0);
  } else if (!strncmp(this_opt, "nomtrr", 6)) {
   nomtrr = 1;
  } else if (!strncmp(this_opt, "fpdither:", 9)) {
   fpdither = simple_strtol(this_opt+9, ((void*)0), 0);
  } else if (!strncmp(this_opt, "bpp:", 4)) {
   bpp = simple_strtoul(this_opt+4, ((void*)0), 0);
  } else
   mode_option = this_opt;
 }
 NVTRACE_LEAVE();
 return 0;
}
