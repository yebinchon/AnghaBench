
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 int REG_11 ;
 int REG_12 ;
 int REG_14 ;
 int REG_8 ;
 int SETUP_HW (struct stifb_info*) ;
 int WRITE_WORD (int,struct stifb_info*,int ) ;

__attribute__((used)) static void
SETUP_ATTR_ACCESS(struct stifb_info *fb, unsigned BufferNumber)
{
 SETUP_HW(fb);
 WRITE_WORD(0x2EA0D000, fb, REG_11);
 WRITE_WORD(0x23000302, fb, REG_14);
 WRITE_WORD(BufferNumber, fb, REG_12);
 WRITE_WORD(0xffffffff, fb, REG_8);
}
