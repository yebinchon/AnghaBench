
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_control {int id; scalar_t__ value; } ;
struct matrox_fb_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ maximum; scalar_t__ minimum; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int EINVAL ;





 unsigned char cve2_get_reg (struct matrox_fb_info*,int) ;
 int cve2_set_reg (struct matrox_fb_info*,int,unsigned char) ;
 int cve2_set_reg10 (struct matrox_fb_info*,int,int) ;
 int g450_compute_bwlevel (struct matrox_fb_info*,int*,int*) ;
 TYPE_2__* g450_controls ;
 int get_ctrl_id (int) ;
 scalar_t__* get_ctrl_ptr (struct matrox_fb_info*,int) ;

__attribute__((used)) static int g450_set_ctrl(void* md, struct v4l2_control *p) {
 int i;
 struct matrox_fb_info *minfo = md;

 i = get_ctrl_id(p->id);
 if (i < 0) return -EINVAL;




 if (p->value == *get_ctrl_ptr(minfo, i)) return 0;




 if (p->value > g450_controls[i].desc.maximum) return -EINVAL;
 if (p->value < g450_controls[i].desc.minimum) return -EINVAL;




 *get_ctrl_ptr(minfo, i) = p->value;

 switch (p->id) {
  case 131:
  case 130:
   {
    int blacklevel, whitelevel;
    g450_compute_bwlevel(minfo, &blacklevel, &whitelevel);
    cve2_set_reg10(minfo, 0x0e, blacklevel);
    cve2_set_reg10(minfo, 0x1e, whitelevel);
   }
   break;
  case 128:
   cve2_set_reg(minfo, 0x20, p->value);
   cve2_set_reg(minfo, 0x22, p->value);
   break;
  case 129:
   cve2_set_reg(minfo, 0x25, p->value);
   break;
  case 132:
   {
    unsigned char val = cve2_get_reg(minfo, 0x05);
    if (p->value) val |= 0x02;
    else val &= ~0x02;
    cve2_set_reg(minfo, 0x05, val);
   }
   break;
 }


 return 0;
}
