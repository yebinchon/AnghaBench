
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 int SETUP_HW (struct stifb_info*) ;
 int WRITE_WORD (int,struct stifb_info*,int) ;

__attribute__((used)) static void
SETUP_RAMDAC(struct stifb_info *fb)
{
 SETUP_HW(fb);
 WRITE_WORD(0x04000000, fb, 0x1020);
 WRITE_WORD(0xff000000, fb, 0x1028);
}
