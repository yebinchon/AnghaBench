
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 int REG_11 ;
 int REG_13 ;
 int REG_14 ;
 int REG_22 ;
 int REG_23 ;
 int REG_3 ;
 int SETUP_HW (struct stifb_info*) ;
 int WRITE_WORD (int,struct stifb_info*,int ) ;

__attribute__((used)) static void
CRX24_SET_OVLY_MASK(struct stifb_info *fb)
{
 SETUP_HW(fb);
 WRITE_WORD(0x13a02000, fb, REG_11);
 WRITE_WORD(0x03000300, fb, REG_14);
 WRITE_WORD(0x000017f0, fb, REG_3);
 WRITE_WORD(0xffffffff, fb, REG_13);
 WRITE_WORD(0xffffffff, fb, REG_22);
 WRITE_WORD(0x00000000, fb, REG_23);
}
