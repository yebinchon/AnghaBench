
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lfb_base; int lfb_linelength; int lfb_height; int lfb_width; } ;


 int EFI_MEMORY_WC ;
 int efifb_setup_from_dmi (TYPE_1__*,char*) ;
 int mem_flags ;
 TYPE_1__ screen_info ;
 int simple_strtoul (char*,int *,int ) ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;
 char* strsep (char**,char*) ;
 int use_bgrt ;

__attribute__((used)) static int efifb_setup(char *options)
{
 char *this_opt;

 if (options && *options) {
  while ((this_opt = strsep(&options, ",")) != ((void*)0)) {
   if (!*this_opt) continue;

   efifb_setup_from_dmi(&screen_info, this_opt);

   if (!strncmp(this_opt, "base:", 5))
    screen_info.lfb_base = simple_strtoul(this_opt+5, ((void*)0), 0);
   else if (!strncmp(this_opt, "stride:", 7))
    screen_info.lfb_linelength = simple_strtoul(this_opt+7, ((void*)0), 0) * 4;
   else if (!strncmp(this_opt, "height:", 7))
    screen_info.lfb_height = simple_strtoul(this_opt+7, ((void*)0), 0);
   else if (!strncmp(this_opt, "width:", 6))
    screen_info.lfb_width = simple_strtoul(this_opt+6, ((void*)0), 0);
   else if (!strcmp(this_opt, "nowc"))
    mem_flags &= ~EFI_MEMORY_WC;
   else if (!strcmp(this_opt, "nobgrt"))
    use_bgrt = 0;
  }
 }

 return 0;
}
