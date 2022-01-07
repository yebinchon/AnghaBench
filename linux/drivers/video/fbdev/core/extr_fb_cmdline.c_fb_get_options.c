
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FB_MAX ;
 int GFP_KERNEL ;
 scalar_t__ fb_mode_option ;
 char* kstrdup (scalar_t__,int ) ;
 scalar_t__ ofonly ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char** video_options ;

int fb_get_options(const char *name, char **option)
{
 char *opt, *options = ((void*)0);
 int retval = 0;
 int name_len = strlen(name), i;

 if (name_len && ofonly && strncmp(name, "offb", 4))
  retval = 1;

 if (name_len && !retval) {
  for (i = 0; i < FB_MAX; i++) {
   if (video_options[i] == ((void*)0))
    continue;
   if (!video_options[i][0])
    continue;
   opt = video_options[i];
   if (!strncmp(name, opt, name_len) &&
       opt[name_len] == ':')
    options = opt + name_len + 1;
  }
 }

 if (!options && option && fb_mode_option)
  options = kstrdup(fb_mode_option, GFP_KERNEL);
 if (options && !strncmp(options, "off", 3))
  retval = 1;

 if (option)
  *option = options;

 return retval;
}
