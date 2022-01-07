
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 int REG_10 ;
 int REG_13 ;
 int REG_14 ;
 int SETUP_HW (struct stifb_info*) ;
 int WRITE_WORD (int,struct stifb_info*,int ) ;

__attribute__((used)) static void
START_IMAGE_COLORMAP_ACCESS(struct stifb_info *fb)
{
 SETUP_HW(fb);
 WRITE_WORD(0xBBE0F000, fb, REG_10);
 WRITE_WORD(0x03000300, fb, REG_14);
 WRITE_WORD(~0, fb, REG_13);
}
