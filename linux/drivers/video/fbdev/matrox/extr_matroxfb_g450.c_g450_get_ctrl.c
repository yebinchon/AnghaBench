
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int value; int id; } ;
struct matrox_fb_info {int dummy; } ;


 int EINVAL ;
 int get_ctrl_id (int ) ;
 int * get_ctrl_ptr (struct matrox_fb_info*,int) ;

__attribute__((used)) static int g450_get_ctrl(void* md, struct v4l2_control *p) {
 int i;
 struct matrox_fb_info *minfo = md;

 i = get_ctrl_id(p->id);
 if (i < 0) return -EINVAL;
 p->value = *get_ctrl_ptr(minfo, i);
 return 0;
}
