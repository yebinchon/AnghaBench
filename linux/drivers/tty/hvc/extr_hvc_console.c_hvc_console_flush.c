
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hv_ops {int dummy; } ;


 int __hvc_flush (struct hv_ops const*,int ,int) ;

__attribute__((used)) static int hvc_console_flush(const struct hv_ops *ops, uint32_t vtermno)
{
 return __hvc_flush(ops, vtermno, 0);
}
