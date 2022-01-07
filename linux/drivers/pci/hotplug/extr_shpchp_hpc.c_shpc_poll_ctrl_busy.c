
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;


 int is_ctrl_busy (struct controller*) ;
 int msleep (int) ;

__attribute__((used)) static inline int shpc_poll_ctrl_busy(struct controller *ctrl)
{
 int i;

 if (!is_ctrl_busy(ctrl))
  return 1;


 for (i = 0; i < 10; i++) {
  msleep(100);
  if (!is_ctrl_busy(ctrl))
   return 1;
 }

 return 0;
}
