
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 int SETUP_HW (struct stifb_info*) ;
 int WRITE_WORD (int,struct stifb_info*,int) ;

__attribute__((used)) static void
CRX24_SETUP_RAMDAC(struct stifb_info *fb)
{
 SETUP_HW(fb);
 WRITE_WORD(0x04000000, fb, 0x1000);
 WRITE_WORD(0x02000000, fb, 0x1004);
 WRITE_WORD(0xff000000, fb, 0x1008);
 WRITE_WORD(0x05000000, fb, 0x1000);
 WRITE_WORD(0x02000000, fb, 0x1004);
 WRITE_WORD(0x03000000, fb, 0x1008);
}
