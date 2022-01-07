
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned short* vc_screenbuf; size_t vc_x; size_t vc_y; size_t vc_cols; int vc_cursor_type; } ;
 int sti_putc (int ,unsigned short,size_t,size_t) ;
 int sticon_sti ;

__attribute__((used)) static void sticon_cursor(struct vc_data *conp, int mode)
{
    unsigned short car1;

    car1 = conp->vc_screenbuf[conp->vc_x + conp->vc_y * conp->vc_cols];
    switch (mode) {
    case 134:
 sti_putc(sticon_sti, car1, conp->vc_y, conp->vc_x);
 break;
    case 133:
    case 135:
 switch (conp->vc_cursor_type & 0x0f) {
 case 128:
 case 130:
 case 131:
 case 129:
 case 132:
     sti_putc(sticon_sti, (car1 & 255) + (0 << 8) + (7 << 11),
       conp->vc_y, conp->vc_x);
     break;
 }
 break;
    }
}
