
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cedrus_format {unsigned int capabilities; scalar_t__ pixelformat; scalar_t__ directions; } ;


 unsigned int CEDRUS_FORMATS_COUNT ;
 struct cedrus_format* cedrus_formats ;

__attribute__((used)) static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
      unsigned int capabilities)
{
 struct cedrus_format *fmt;
 unsigned int i;

 for (i = 0; i < CEDRUS_FORMATS_COUNT; i++) {
  fmt = &cedrus_formats[i];

  if (fmt->capabilities && (fmt->capabilities & capabilities) !=
      fmt->capabilities)
   continue;

  if (fmt->pixelformat == pixelformat &&
      (fmt->directions & directions) != 0)
   break;
 }

 if (i == CEDRUS_FORMATS_COUNT)
  return ((void*)0);

 return &cedrus_formats[i];
}
