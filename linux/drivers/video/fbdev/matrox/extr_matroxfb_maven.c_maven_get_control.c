
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int value; int id; } ;
struct maven_data {int dummy; } ;


 int EINVAL ;
 int get_ctrl_id (int ) ;
 int * get_ctrl_ptr (struct maven_data*,int) ;

__attribute__((used)) static int maven_get_control (struct maven_data* md,
         struct v4l2_control *p) {
 int i;

 i = get_ctrl_id(p->id);
 if (i < 0) return -EINVAL;
 p->value = *get_ctrl_ptr(md, i);
 return 0;
}
