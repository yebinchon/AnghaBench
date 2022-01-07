
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 scalar_t__ fb_get_options (char*,char**) ;
 char* fb_mode ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int imxfb_setup(void)
{
 char *opt, *options = ((void*)0);

 if (fb_get_options("imxfb", &options))
  return -ENODEV;

 if (!options || !*options)
  return 0;

 while ((opt = strsep(&options, ",")) != ((void*)0)) {
  if (!*opt)
   continue;
  else
   fb_mode = opt;
 }

 return 0;
}
