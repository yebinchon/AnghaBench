
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_STI_ROMS ;
 void** font_height ;
 void** font_index ;
 char** font_name ;
 void** font_width ;
 void* simple_strtoul (char*,int *,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int sti_font_setup(char *str)
{
 char *x;
 int i = 0;




 while (i<MAX_STI_ROMS && str && *str) {
  if (*str>='0' && *str<='9') {
   if ((x = strchr(str, 'x')) || (x = strchr(str, '*'))) {
    font_height[i] = simple_strtoul(str, ((void*)0), 0);
    font_width[i] = simple_strtoul(x+1, ((void*)0), 0);
   } else {
    font_index[i] = simple_strtoul(str, ((void*)0), 0);
   }
  } else {
   font_name[i] = str;
  }

  if ((x = strchr(str, ',')))
   *x++ = 0;
  str = x;

  i++;
 }

 return 1;
}
