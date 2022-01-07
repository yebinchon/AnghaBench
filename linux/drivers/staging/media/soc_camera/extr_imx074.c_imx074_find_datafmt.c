
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct imx074_datafmt {scalar_t__ code; } ;


 int ARRAY_SIZE (struct imx074_datafmt const*) ;
 struct imx074_datafmt const* imx074_colour_fmts ;

__attribute__((used)) static const struct imx074_datafmt *imx074_find_datafmt(u32 code)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(imx074_colour_fmts); i++)
  if (imx074_colour_fmts[i].code == code)
   return imx074_colour_fmts + i;

 return ((void*)0);
}
