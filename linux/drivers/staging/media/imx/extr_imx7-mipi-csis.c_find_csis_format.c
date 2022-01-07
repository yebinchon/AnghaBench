
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct csis_pix_format {scalar_t__ code; } ;


 unsigned int ARRAY_SIZE (struct csis_pix_format const*) ;
 struct csis_pix_format const* mipi_csis_formats ;

__attribute__((used)) static const struct csis_pix_format *find_csis_format(u32 code)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(mipi_csis_formats); i++)
  if (code == mipi_csis_formats[i].code)
   return &mipi_csis_formats[i];
 return ((void*)0);
}
