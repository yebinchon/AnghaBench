
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {int dummy; } ;


 int __hvc_poll (struct hvc_struct*,int) ;

int hvc_poll(struct hvc_struct *hp)
{
 return __hvc_poll(hp, 0);
}
