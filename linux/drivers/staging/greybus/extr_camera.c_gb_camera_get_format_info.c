
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct gb_camera_fmt_info {scalar_t__ gb_format; } ;


 unsigned int ARRAY_SIZE (struct gb_camera_fmt_info const*) ;
 struct gb_camera_fmt_info const* gb_fmt_info ;

__attribute__((used)) static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(gb_fmt_info); i++) {
  if (gb_fmt_info[i].gb_format == gb_fmt)
   return &gb_fmt_info[i];
 }

 return ((void*)0);
}
