
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;


 int maven_get_control (void*,struct v4l2_control*) ;

__attribute__((used)) static int maven_out_get_ctrl(void* md, struct v4l2_control* p) {
 return maven_get_control(md, p);
}
