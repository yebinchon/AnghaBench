
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_pos; scalar_t__ vc_need_wrap; scalar_t__ vc_x; } ;


 int notify_write (struct vc_data*,char) ;

__attribute__((used)) static inline void bs(struct vc_data *vc)
{
 if (vc->vc_x) {
  vc->vc_pos -= 2;
  vc->vc_x--;
  vc->vc_need_wrap = 0;
  notify_write(vc, '\b');
 }
}
