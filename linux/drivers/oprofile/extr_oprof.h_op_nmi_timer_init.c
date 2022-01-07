
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oprofile_operations {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int op_nmi_timer_init(struct oprofile_operations *ops)
{
 return -ENODEV;
}
