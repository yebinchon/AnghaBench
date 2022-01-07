
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hv_ops {int (* flush ) (int ,int) ;} ;


 int might_sleep () ;
 int stub1 (int ,int) ;

__attribute__((used)) static int __hvc_flush(const struct hv_ops *ops, uint32_t vtermno, bool wait)
{
 if (wait)
  might_sleep();

 if (ops->flush)
  return ops->flush(vtermno, wait);
 return 0;
}
