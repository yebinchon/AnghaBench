
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lynx_accel {int dummy; } ;


 int DE_CLIP_BR ;
 int DE_CLIP_TL ;
 int DE_COLOR_COMPARE ;
 int DE_COLOR_COMPARE_MASK ;
 int DE_CONTROL ;
 int DE_CONTROL_TRANSPARENCY ;
 int DE_CONTROL_TRANSPARENCY_MATCH ;
 int DE_CONTROL_TRANSPARENCY_SELECT ;
 int DE_MASKS ;
 int DE_STRETCH_FORMAT ;
 int DE_STRETCH_FORMAT_ADDRESSING_MASK ;
 int DE_STRETCH_FORMAT_PATTERN_XY ;
 int DE_STRETCH_FORMAT_PATTERN_X_MASK ;
 int DE_STRETCH_FORMAT_PATTERN_Y_MASK ;
 int DE_STRETCH_FORMAT_SOURCE_HEIGHT_MASK ;
 int read_dpr (struct lynx_accel*,int ) ;
 int write_dpr (struct lynx_accel*,int ,int) ;

void sm750_hw_de_init(struct lynx_accel *accel)
{

 u32 reg, clr;

 write_dpr(accel, DE_MASKS, 0xFFFFFFFF);


 reg = 0x3;

 clr = DE_STRETCH_FORMAT_PATTERN_XY |
       DE_STRETCH_FORMAT_PATTERN_Y_MASK |
       DE_STRETCH_FORMAT_PATTERN_X_MASK |
       DE_STRETCH_FORMAT_ADDRESSING_MASK |
       DE_STRETCH_FORMAT_SOURCE_HEIGHT_MASK;


 write_dpr(accel, DE_STRETCH_FORMAT,
    (read_dpr(accel, DE_STRETCH_FORMAT) & ~clr) | reg);


 write_dpr(accel, DE_CLIP_TL, 0);
 write_dpr(accel, DE_CLIP_BR, 0);

 write_dpr(accel, DE_COLOR_COMPARE_MASK, 0);
 write_dpr(accel, DE_COLOR_COMPARE, 0);

 clr = DE_CONTROL_TRANSPARENCY | DE_CONTROL_TRANSPARENCY_MATCH |
  DE_CONTROL_TRANSPARENCY_SELECT;


 write_dpr(accel, DE_CONTROL, read_dpr(accel, DE_CONTROL) & ~clr);
}
