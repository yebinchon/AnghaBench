
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 int SETUP_HW (struct stifb_info*) ;
 int WRITE_WORD (unsigned int,struct stifb_info*,int) ;

__attribute__((used)) static void
ENABLE_DISABLE_DISPLAY(struct stifb_info *fb, int enable)
{
 unsigned int value = enable ? 0x43000000 : 0x03000000;
        SETUP_HW(fb);
        WRITE_WORD(0x06000000, fb, 0x1030);
        WRITE_WORD(value, fb, 0x1038);
}
