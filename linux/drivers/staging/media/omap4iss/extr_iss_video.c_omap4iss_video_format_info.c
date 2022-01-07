
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iss_format_info {scalar_t__ code; } ;


 unsigned int ARRAY_SIZE (struct iss_format_info const*) ;
 struct iss_format_info const* formats ;

const struct iss_format_info *
omap4iss_video_format_info(u32 code)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(formats); ++i) {
  if (formats[i].code == code)
   return &formats[i];
 }

 return ((void*)0);
}
