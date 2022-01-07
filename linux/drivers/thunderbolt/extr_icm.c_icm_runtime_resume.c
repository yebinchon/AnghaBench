
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dummy; } ;


 int icm_complete (struct tb*) ;

__attribute__((used)) static int icm_runtime_resume(struct tb *tb)
{




 icm_complete(tb);
 return 0;
}
