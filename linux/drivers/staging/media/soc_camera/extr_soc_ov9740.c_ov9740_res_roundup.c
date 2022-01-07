
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 scalar_t__ OV9740_MAX_HEIGHT ;
 scalar_t__ OV9740_MAX_WIDTH ;

__attribute__((used)) static void ov9740_res_roundup(u32 *width, u32 *height)
{

 *width = ALIGN(*width, 4);


 if (*width > OV9740_MAX_WIDTH)
  *width = OV9740_MAX_WIDTH;

 if (*height > OV9740_MAX_HEIGHT)
  *height = OV9740_MAX_HEIGHT;
}
