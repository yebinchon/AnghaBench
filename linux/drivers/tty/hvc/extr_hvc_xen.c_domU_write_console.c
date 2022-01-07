
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xencons_info {int dummy; } ;


 int EINVAL ;
 int HYPERVISOR_sched_op (int ,int *) ;
 int SCHEDOP_yield ;
 int __write_console (struct xencons_info*,char const*,int) ;
 scalar_t__ unlikely (int) ;
 struct xencons_info* vtermno_to_xencons (int ) ;

__attribute__((used)) static int domU_write_console(uint32_t vtermno, const char *data, int len)
{
 int ret = len;
 struct xencons_info *cons = vtermno_to_xencons(vtermno);
 if (cons == ((void*)0))
  return -EINVAL;







 while (len) {
  int sent = __write_console(cons, data, len);

  data += sent;
  len -= sent;

  if (unlikely(len))
   HYPERVISOR_sched_op(SCHEDOP_yield, ((void*)0));
 }

 return ret;
}
