
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum v4l2_colorspace { ____Placeholder_v4l2_colorspace } v4l2_colorspace ;







__attribute__((used)) static u32 v4l2_colorspace_to_mcu_colorspace(enum v4l2_colorspace colorspace)
{
 switch (colorspace) {
 case 131:
  return 2;
 case 130:
  return 3;
 case 129:
  return 4;
 case 128:
  return 7;
 default:

  return 0;
 }
}
