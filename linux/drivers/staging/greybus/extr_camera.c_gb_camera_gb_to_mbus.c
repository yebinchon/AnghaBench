
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
typedef enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;
struct TYPE_3__ {scalar_t__ gb_format; int mbus_code; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* gb_fmt_info ;

__attribute__((used)) static enum v4l2_mbus_pixelcode gb_camera_gb_to_mbus(u16 gb_fmt)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(gb_fmt_info); i++) {
  if (gb_fmt_info[i].gb_format == gb_fmt)
   return gb_fmt_info[i].mbus_code;
 }
 return gb_fmt_info[0].mbus_code;
}
