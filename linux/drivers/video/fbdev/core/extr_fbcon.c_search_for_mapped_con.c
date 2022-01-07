
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* con2fb_map ;
 int first_fb_vc ;
 int last_fb_vc ;

__attribute__((used)) static int search_for_mapped_con(void)
{
 int i, retval = 0;

 for (i = first_fb_vc; i <= last_fb_vc; i++) {
  if (con2fb_map[i] != -1)
   retval = 1;
 }
 return retval;
}
