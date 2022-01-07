
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;


 int __pciehp_link_set (struct controller*,int) ;

__attribute__((used)) static int pciehp_link_enable(struct controller *ctrl)
{
 return __pciehp_link_set(ctrl, 1);
}
