
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 int REG_3 ;
 int REG_4 ;
 int SETUP_HW (struct stifb_info*) ;
 int WRITE_WORD (int,struct stifb_info*,int ) ;

__attribute__((used)) static void
WRITE_IMAGE_COLOR(struct stifb_info *fb, int index, int color)
{
 SETUP_HW(fb);
 WRITE_WORD(((0x100+index)<<2), fb, REG_3);
 WRITE_WORD(color, fb, REG_4);
}
